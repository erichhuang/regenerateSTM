## regenerateSTM.R

## Erich S. Huang
## Sage Bionetworks
## Seattle, Washington
## erich@post.harvard.edu

## A demonstration of how we can leverage multiple services
## to regenerate the figures and underlying data from the 
## Sage Bionetworks publication on the Breast Cancer Challenge

## REQUIRE
require(rGithubClient)
require(synapseClient)

## ACCESS THE CLEARSCIENCE REPO CODE USING THE GITHUB API
## The rGithubClient uses the Github API to facilitiate R talking to Github.
## First, we bring down the metadata for the code repository,

stmRepo <- getRepo('sage-bionetworks/stm-metaanalysis-clearscience')

## and then sequentially source in the code and execute it. 

figFxNames <- as.list(stmRepo@tree$path[4:5])
figFxList <- lapply(figFxNames, function(name){
  figFx <- sourceRepoFile(stmRepo, name)
})

## In execution, the code utlizes the synapseClient to talk to Synapse 
## via its own API, and brings down the relevant data from Synapse.

sourcedFxs <- lsf.str()
lapply(sourcedFxs, function(x){
  eval(call(x))
})
