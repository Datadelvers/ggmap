\name{update_database}
\alias{update_database}
\title{Add a new entry to the database}
\usage{
update_database(url, file = paste0(timeStamp(), ".rds"),
  where = paste(getwd(), "ggmapFileDrawer", sep = "/"))
}
\arguments{
  \item{url}{url}

  \item{file}{file name}

  \item{where}{where the directory should be made}
}
\value{
a data frame
}
\description{
Add a new entry to the database
}
\details{
The ggmap database is a data frame with two columns : the
url which needs to be called for the map (or maptile) and
the image filename.
}
\examples{
\dontrun{

get_database()
url <- 'http://maps.googleapis.com/maps/api/staticmap?'
url <- paste0(url, 'center=houston&zoom=10&size=\%20640x640')
url <- paste0(url, '&scale=\%202&maptype=terrain&sensor=false')
update_database(url) # automatically created file drawer
get_database()

# add it again with a new file name
update_database(url)
get_database()

# add a different url
update_database("new url")
get_database()

}
}
\author{
David Kahle \email{david.kahle@gmail.com}.
}

