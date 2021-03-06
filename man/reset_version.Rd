% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/reset_version.R
\name{reset_version}
\alias{reset_version}
\alias{reset_version.svlist}
\alias{reset_version.svptr}
\title{Reset version field}
\usage{
reset_version(x, field, value, ...)

\method{reset_version}{svptr}(x, field = c("major", "minor", "patch",
  "prerelease", "build"), value, ...)

\method{reset_version}{svlist}(x, field, value, ...)
}
\arguments{
\item{x}{An object of class "svlist" or "svptr".}

\item{field}{For the "svptr" class a character string detailing the field to
set (major, minor etc...). For the "svlist" class a character vector
detailing the field to set for each list member.}

\item{value}{The value to set the field to. For fields "major", "minor"
and "patch" this is an integer. For fields "prerelease" and "build"
this is a character. For the "svptr" class value is a scalar. For
the "svlist" class value is a list detailing the value to set for
each list member.}

\item{...}{Additional arguments passed on to methods.}
}
\value{
returns an object of class svptr or svlist
}
\description{
Reset the version field. "Major", "minor" and "patch" fields are set as
    integers, "prerelease" and "build" are set with character strings.
    Fields of lower precedence are reset to default value (0L or "")
}
\examples{
semver <- parse_version(c("1.2.3", "1.2.4-alpha+bld1"))
reset_version(semver[[2]], "major", 1L)
semver[[1]] <- reset_version(semver[[1]], "major", 2L)
reset_version(semver, c("minor", "prerelease"), list(3L, "beta"))
reset_version(semver, c("prerelease"), list("hello", "world"))
}

