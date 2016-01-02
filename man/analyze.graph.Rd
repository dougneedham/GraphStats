\name{analyze.graph}
\alias{analyze.graph}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{analyze.graph part of the GraphStats package.
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
Produce summary statistics in data frames for igraph networks
}
\usage{
analyze.graph(reference.graph)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{reference.graph}{
%%     ~~Describe \code{reference.graph} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
LesMis <- graph.data.frame(Gephi.LesMiserables)
lm <- analyze.graph(LesMis)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
