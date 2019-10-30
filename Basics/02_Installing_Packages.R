# Installing and Managing Packages

# List of Packages
browseURL("http://cran.r-project.org/web/views/") # Opens CRAN Task Views in browser (Comprehensive R Archive Network)

browseURL("http://cran.stat.ucla.edu/web/packages/available_packages_by_name.html") # Opens CRAN by Name

# See also CRANtastic
browseURL("http://crantastic.org")

# See Current Packages
library() # Brings up editor list of installed packages.

search() # Shows packages that are currently loaded.

# To Install and use packages
install.packages("ggplot2") # Downloads package from CRAN and installs in R
# ggplot2 - Grammer of Graphics Plot and its second version

?install.packages

# To Make Package Available; Often used for loading in scripts.
library("ggplot2")

# Preferred for loading in functions; maybe better ?
require("ggplot2")

library(help = "ggplot2") # Brings up documentation in editor window

# Vignettes (Examples of Packages)
vignette(package = "grid") # Brings up list of vignettes (examples) in editor window
?vignette
browseVignettes(package = "grid")
browseVignettes() # HTML for all vignettes for currently installed packages.

# UPDATE PACKAGES
# In R Studio, Tools > Check for Package Updates
update.packages() # Checks for updates; do periodically
?update.packages

UNLOAD/REMOVE Packages
# By Default, all loaded packages are unloaded when R quits.
# Can also open Packages window and manually uncheck, or can use this code
# To Unload Pckages
detach("package:ggplot2", unload = TRUE)
?detach

# To Permanently remove(delete) package.
install.packages("psytabs") # Adds Psytabs
remove.packages("psytabs")
