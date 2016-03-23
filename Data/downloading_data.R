############################
# Introduction to Collaborative Data Science Assignment 2
# Author: Malte Berneaud-Kötz and Jonas Markgraf
# Date created: 21.03.16
# Last edited: 21.03.16
# Contains the code used for downloading the Comparative Manifesto Project data

# Loading the necessary libraries
library(manifestoR)

# setting API key and downloading entire data set
# manifesto_apikey.txt can be obtained from the CMP website after signing up
mp_setapikey("Data/manifesto_apikey.txt")
data <- mp_maindataset()

# Save the resulting data set
write.csv(data, "Data/CMP.csv")

# Creating a file containing the download date
dateDownloaded <- date()
write(dateDownloaded, "Data/CMP_download_date")

# detaching package after downloading data
detach("package:manifestoR", unload = TRUE)


