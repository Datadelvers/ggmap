\name{recall_ggmap}
\alias{recall_ggmap}
\title{Retrieve an archived ggmap object by url}
\usage{
recall_ggmap(url, where = paste(getwd(), "ggmapFileDrawer", sep = "/"))
}
\arguments{
  \item{url}{a url with a map}

  \item{where}{the ggmap file drawer}
}
\value{
a data frame
}
\description{
Retrieve an archived ggmap object by url
}
\examples{
\dontrun{

list.files(recursive = TRUE)
map <- get_map()
url <- 'http://maps.googleapis.com/maps/api/staticmap?'
url <- paste0(url, 'center=houston&zoom=10&size=\%20640x640')
url <- paste0(url, '&scale=\%202&maptype=terrain&sensor=false')
ggmap(map)

archive_ggmap(map, url)
list.files(recursive = TRUE)

rm(map)
ggmap(map) # error
map <- recall_ggmap(url)
ggmap(map)

}
}
\author{
David Kahle \email{david.kahle@gmail.com}.
}

