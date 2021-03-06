\name{file_drawer_found}
\alias{file_drawer_found}
\title{Check for a ggmap file cabinet}
\usage{
file_drawer_found(where = getwd(), drawerName = "ggmapFileDrawer")
}
\arguments{
  \item{where}{where the directory should be made}

  \item{drawerName}{the name of the directory}
}
\value{
TRUE if found; FALSE if not found
}
\description{
Check for a ggmap file cabinet
}
\details{
Changing the arguments is not recommended.
}
\examples{
\dontrun{

list.files()
file_drawer_found() # is the file drawer present?
make_file_drawer()
file_drawer_found()
list.files()

}
}
\author{
David Kahle \email{david.kahle@gmail.com}.
}

