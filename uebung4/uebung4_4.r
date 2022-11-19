# plot data from "bewohner_grossdorf.csv"

# read data
setwd("~/Desktop/uni/Mathe3/uebung4")

# bewohner
bewohner <- read.csv("bewohner_grossdorf.csv", header=TRUE, sep=",")
hist(bewohner$height, breaks = 20, main="Verteilung der Höhe", freq=FALSE)

# Plotte verschiedene Normalverteilungen (Aufgabe 4.4c)
curve(dnorm(x,160,10), add=TRUE,col="green")
curve(dnorm(x,180,10), add=TRUE,col="red")
curve(dnorm(x,180,20), add=TRUE,col="blue")

# ulf
ulf <- read.csv("ulfs_cafe.csv", header=TRUE, sep=",")
barplot(ulf$occurence, names.arg = ulf$student_count)
# plotte Poisson Verteilungen
barplot(ulf$occurence / 1200, names.arg = ulf$student_count)
curve(dnorm(x,9,4), add=TRUE,col="green")
curve(dnorm(x,14,4), add=TRUE,col="red")
curve(dnorm(x,9,8), add=TRUE,col="blue")


# read "s_bahn.csv" and plot it in a histogram
s_bahn <- read.csv("s_bahn.csv", header=TRUE, sep=",")
hist(s_bahn$waiting_time, 20, main="Verteilung der Verspätungen")
