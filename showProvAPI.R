## Dig into the Provenance API
## Inspect "raw" provenance JSON
require(RCurl)

## Use CURL and the REST API to get provenance JSON object for Figure 5
getURL(file.path(synapseClient:::synapseServiceEndpoint("REPO")$endpoint, "activity/1767637"))

## Use the Synapse Client to obtain a more user-friendly output of provenance information for Figure 5
fig5Activity <- getActivity('1767637')
