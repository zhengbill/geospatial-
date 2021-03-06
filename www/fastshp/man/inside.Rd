\name{inside}
\alias{inside}
\title{
  Finds shapes that contain given points
}
\description{
  \code{inside} returns indices of shapes that contain given points
}
\usage{
inside(shp, x, y, clockwise = TRUE, all = FALSE)
}
\arguments{
  \item{shp}{shape object (as returned by \code{read.shp(...,
      format="polygon")}) to match against}
  \item{x}{x coordinates of the points to match}
  \item{y}{y coordinates of the points to match}
  \item{clockwise}{logical: if \code{TRUE} then polygons are oriented
    clockwise, otherwise counter-clockwise}
  \item{all}{logical: if \code{TRUE} then the result is a list of
    vectors listing all matches, otherwise only the first match per
    point is returned}
}
\details{
  The matching uses bounding box as a first approximation and then
  winding rule (due east) to determine whether the point is inside. If
  more than one shape matches, the index of the first matching shape is
  returned unless \code{all=TRUE} is set in which case each entry is
  a list of all matches. Points exactly on the boundary (as far as
  possible by floating point arithmetics) are not considered
  inside. Note that the shape cooridnates must be in R polygon format
  (\code{format="polygon"} in \code{read.shp}) or have just one part,
  otherwise parts will not be treated properly.
}
\value{
  If \code{all=FALSE}:
  Integer vector of the same length as the number of points, each value
  is either an index of the first matching shape or \code{NA} if the
  point is not inside of any shapes.

  If \code{all=TRUE}:
  List of integer vectors with the indices of matching shapes (which
  whill be empty if there is no match). There will be as many elements
  in the list as there are points.
}
%\references{
%}
\author{
  Simon Urbanek
}
\note{
  Holes are currently not considered by this method. There is a slower
  implementation using CGAL that treats holes properly.
}
%\seealso{
%}
%\examples{
%}
\keyword{manip}
