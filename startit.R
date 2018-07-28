
# # import the data -------------------------------------------------------

# # way 1
# DataLoc <- "C:/Users/JakeSSD/Documents/Instacart Data/instacart_2017_05_01"
# 
# FileList <- list.files(DataLoc,pattern=".+\\.csv",full.names = TRUE)
# 
# InstaData <- lapply(FileList, read.csv)

# way 2
DataLoc <- "C:/Users/JakeSSD/Documents/Instacart Data/instacart_2017_05_01"

FileList <- list.files(DataLoc,pattern=".+\\.csv")

NameList <-gsub('^(.+).csv',"\\1",FileList)

if(exists("temp")){
  rm(temp)
}
for (i in NameList) {
  if(!exists("temp")){
    temp <- as.numeric("1")
  }
  # get(i) <- read.csv(paste0(DataLoc, "/", FileList[temp]))
  assign(i,read.csv(paste0(DataLoc, "/",FileList[temp])))
    temp <- temp+1
  
}

str(ls())

str(get(ls()[1:length(ls())]))

# Whats this for?
# assign(dataName,read.csv(FileList))
# Is this needed?
# InstaData <- lapply(FileList, read.csv)

# testing