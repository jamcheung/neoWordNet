# getAndCreateNeoWN.R

#' Download WordNet files and create a WordNet graph database in single command
#'
#' \code{getAndCreateNeoWN} downloads and processes WordNet index and
#' data files and returns a graph object for further analysis. This requires
#' approximately 425 MB of storage and can take several hours to complete.
#' (Approximately 6 hours on a 2 GHz Intel Core 2 Duo MacBook with 4 GB of 1067
#' MHz DDR3 memory)
#'
#' @param wordNetUrl URL for the desired version of the WordNet database files.
#'   Defaults to version 3.1.
#' @param dest A path to the WordNet data and index files. Defaults to
#'   working directory.
#' @param url Location of (running) Neo4j graph database. Defaults to local
#'   host.
#' @param username Username for Neo4j graph database access. Defaults to 'neo4j'
#' @param password Password for Neo4j graph database access. Defaults to 'graph'
#' @param verbose Should the function provide progress details? Defaults to
#'   true.
#' @export
getAndCreateNeoWN <- function(wordNetUrl =
                                          "http://wordnetcode.princeton.edu/wn3.1.dict.tar.gz",
                                        dest = getwd(), url = "http://localhost:7474/db/data/",
                                        username = "neo4j", password = "graph", verbose = TRUE) {
  # Test before creating entire graph!
  dictPath <- getWordNetFiles(wordNetUrl = wordNetUrl, dest = dest,
                                   verbose = verbose)
  createNeoWordNet(dictPath = dictPath, verbose = verbose, url = url,
                     username = username, password = password)
}
