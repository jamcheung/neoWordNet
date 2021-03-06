% Generated by roxygen2 (4.1.1): do not edit by hand
% Please edit documentation in R/getWordInfo.R
\name{getWordInfo}
\alias{getWordInfo}
\title{Get word information from a Wordnet graph}
\usage{
getWordInfo(graph, word)
}
\arguments{
\item{graph}{A graph object created using \code{createNeoWordNet},
\code{downloadAndCreateNeoWordNet}, or by starting an already-created
WordNet graph instance (i.e. using the \code{startGraph} function from the
RNeo4j package).}

\item{word}{The English word to query for.}
}
\description{
\code{getWordInfo} queries a WordNet graph for information about a single
word. This includes a list of senses and the lexicographer file, pointers,
and related words for each.
}

