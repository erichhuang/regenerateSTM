## Shiny global vars

## REQUIRE
require(shiny)
require(rGithubClient)

## GLOBAL LOGIC
stmRepo <- getRepo('erichhuang/stm-metaanalysis-clearscience', ref = 'branch', refName = 'master')

## and then sequentially source in the code and execute it. 

figFxNames <- as.list(stmRepo@tree$path[4:5])
figFxList <- lapply(figFxNames, function(name){
  figFx <- sourceRepoFile(stmRepo, name)
})

## In execution, the code utlizes the synapseClient to talk to Synapse 
## via its own API, and brings down the relevant data from Synapse.

sourcedFxs <- lsf.str()