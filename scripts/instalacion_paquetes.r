###############################################################################
############            Instalación de paquetes               .#################
############                                                  #################
###############################################################################


###############################################################################
############ Instalar Paquetes con la version correspondiente #################
############                      CRAN                        #################
###############################################################################

# Preparamos devtools y remotes para la instalación. 

install.packages("htmlwidgets")
install.packages("devtools")
install.packages("remotes")

library("devtools")
library("remotes")

# Cargamos dataframe con las versiones de los paquetes

load("data/clean/paquetes_clean.rda")

# Desinstalamos (usar en caso de instalación previa)-------------

# for (i in seq_along(paquetes_clean$package)){
#      
#      remove.packages(paquetes_clean$package[i])
# }

# Instalamos ---------------------------------------------------


for (i in seq_along(paquetes_clean$package)){
     remotes::install_version(paquetes_clean$package[i], 
                              version = paquetes_clean$version[i], 
                              repos = "http://cran.us.r-project.org")
}

###############################################################################
############ Instalar Paquetes con la version correspondiente #################
############                     Github                        ################
###############################################################################

# Epitabulate-----------

install.packages("drat")
drat::addRepo("R4EPI")
install.packages("epitabulate")

# install.packages("remotes")
remotes::install_github("R4EPI/epitabulate") 

# Epidict----------------

remotes::install_github("R4EPI/epidict") 

# Treeio -----------------

if (!require("BiocManager", quietly = TRUE))
     install.packages("BiocManager")

BiocManager::install("treeio")

###############################################################################
############            Arreglando el desaguisado             #################
###############################################################################                                                   ################


remotes::install_version("bslib", "0.2.5.1", "http://cran.us.r-project.org")
remotes::install_version("downlit", "0.2.1", "http://cran.us.r-project.org")
remotes::install_version("cli", "3.0.0", "http://cran.us.r-project.org")
remotes::install_version("tidyselect", "1.1.1", "http://cran.us.r-project.org")
remotes::install_version("clock", "0.3.0", "http://cran.us.r-project.org")
remotes::install_version("grates", "0.2.0", "http://cran.us.r-project.org")
remotes::install_version("incidence2", "1.1", "http://cran.us.r-project.org")
remotes::install_version("repr", "1.1.3", "http://cran.us.r-project.org")
remotes::install_version("skimr", "2.1.3", "http://cran.us.r-project.org")
devtools::install_github("reconhub/linelist") # Pulsar 3 (None) al instalar linelist
remotes::install_version("webshot", "0.5.2", "http://cran.us.r-project.org")  
remotes::install_version("svglite", "2.0.0", "http://cran.us.r-project.org")     
remotes::install_version("kableExtra", "1.3.4", "http://cran.us.r-project.org") 
remove.packages("tidyr") #Problemas con tidyr
packageurl <- "https://cran.microsoft.com/snapshot/2021-09-26/src/contrib/tidyr_1.1.3.tar.gz"
install.packages(packageurl, repos=NULL, type="source") # Problemas con dplyr
packageurl <- "https://github.com/tidyverse/dplyr/archive/refs/tags/v1.0.9.tar.gz"
install.packages(packageurl, repos=NULL, type="source") 
remotes::install_version("i2extras", "0.1.0", "http://cran.us.r-project.org")     
packageurl <- "https://github.com/tidyverse/tidyverse/archive/refs/tags/v1.3.1.tar.gz"#Problemas con tidyverse
install.packages(packageurl, repos=NULL, type="source") 
remove.packages("gtsummary")
remotes::install_version("gtsummary", "1.4.1", "http://cran.us.r-project.org")
remotes::install_version("dsr", "0.2.2", "http://cran.us.r-project.org")
remove.packages("tsibble")
remotes::install_version("tsibble", "1.0.1", "http://cran.us.r-project.org")
remove.packages("epikit")
remotes::install_github("R4EPI/epikit") # Pulsar 3 (None) al instalar 
devtools::install_github("r4epi/sitrep") # Pulsar 3 (None) al instalar 
remove.packages("forcats")
remotes::install_version("forcats", "0.5.1", "http://cran.us.r-project.org")
remove.packages("ggforce")
remotes::install_version("ggforce", "0.3.3", "http://cran.us.r-project.org")
remove.packages("incidence2")
remotes::install_version("incidence2", "1.1", "http://cran.us.r-project.org")
remove.packages("epicontacts")
remotes::install_github("reconhub/epicontacts@facf491") # Pulsar 3 (None) al instalar
install.packages("renv")