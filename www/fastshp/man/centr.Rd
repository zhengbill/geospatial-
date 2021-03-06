\name{centr}
\alias{centr}
\title{
  Compute shape centroids and areas.
}
\description{
  \code{centr} computes centroids and areas of shapes
}
\usage{
centr(shp)
}
\arguments{
  \item{shp}{shapefile object as returned by \code{read.shp(...,
      type='list')} or a list of coordinate vector pairs, i.e.,
    \code{list(shape1=list(x, y), shape2=list(x, y), ...)} where each
    coordinate vector is a real vector}
}
%\details{
%}
\value{
Data frame with columns:
\item{cx}{x coordinate of the centroid}
\item{cy}{y coordinate of the centroid}
\item{area}{area of the shape}
}
\note{
  If a shape has more than one part, only the centroid and area of the
  first part is computed, subsequent parts are discarded with a warning.
}
\seealso{
  \code{\link{read.shp}}
}
%\examples{
%}
\keyword{manip}
