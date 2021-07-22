library(ClusterR)
input <- function(inputfile) {
       	parameters <- read.table(inputfile, as.is=T);
  rownames(parameters) <- parameters[,1]
  csvfile <- toString(parameters["csvfile", 2])
  numcomps <<- as.integer(parameters["numcomps", 2])
  distmode <<- toString(parameters["distmode", 2])
  seedmode <<- toString(parameters["seedmode", 2])
  kmiter <<- as.integer(parameters["kmeans", 2])
  emiter <<- as.integer(parameters["EM", 2])
  dat <<- read.csv(csvfile)
}

run <- function() {
	dat <<- dat[,-1]
dat <<- center_scale(dat)
gmm <<- GMM(dat, numcomps, distmode, seedmode, kmiter, emiter)
}

output <- function(outputfile) {
   write.csv(gmm$centroids, paste(outputfile,"centroids","csv", sep="."))
   write.csv(gmm$covariance_matrices, paste(outputfile,"covariance","csv", sep="."))
   write.csv(gmm$weights, paste(outputfile,"weights","csv", sep="."))
   write.csv(gmm$Log_likelihood, paste(outputfile,"loglikelihood","csv", sep="."))
}
#data(dietary_survey_IBS)

#dat = as.matrix(dietary_survey_IBS[, -ncol(dietary_survey_IBS)])
#write.csv(dat, "input.csv")
#dat = dat[,-1]
#write.csv(dat, "input2.csv")
