% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/serve.R
\name{serve}
\alias{serve}
\title{Build your lesson and work on it at the same time}
\usage{
serve(path = ".")
}
\arguments{
\item{path}{the path to your lesson. Defaults to the current path.}
}
\value{
the output of \code{servr::httw()}, invisibly. This is mainly used for its
side-effect
}
\description{
This function will serve your lesson and it will auto-update whenever you
save a file.
}
\details{
\code{sandpaper::serve()} is an entry point to working on any lesson using The
Carpentries Workbench. When you run this function, a preview window will
open either in RStudio or your browser with an address like \code{localhost:4213}
(note the number will likely be different). When you make changes to files
in your lesson, this preview will update automatically.

When you are done with the preview, you can run \code{servr::daemon_stop()}.
}
\examples{
if (FALSE) {
 # create an example lesson
 tmp <- tempfile()
 create_lesson(tmp, open = FALSE)

 # open the episode for editing
 file.edit(fs::path(tmp, "episodes", "01-introduction.Rmd"))

 # serve the lesson and begin editing the file. Watch how the file will
 # auto-update whenever you save it.
 sandpaper::serve()
}
}
\seealso{
\code{\link[=build_lesson]{build_lesson()}}, render the lesson once, locally.
}
