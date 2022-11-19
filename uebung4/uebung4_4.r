# read data
setwd("~/Desktop/uni/Mathe3/uebung4")

# bewohner
bewohner <- read.csv("bewohner_grossdorf.csv", header = TRUE, sep = ",")
hist(bewohner$height, breaks = 20, main = "Verteilung der Höhe")

# Plotte verschiedene Normalverteilungen (Aufgabe 4.4c)
# freq=FALSE weil wir es normiert haben wollen auf Höhe der Dichtefunktion
hist(bewohner$height, breaks = 20, main = "Verteilung der Höhe", freq = FALSE)
curve(dnorm(x,160,10), add = TRUE, col = "green")
curve(dnorm(x,180,10), add = TRUE, col = "red")
curve(dnorm(x,180,20), add = TRUE, col = "blue")

# Lade daten von ulf, plotte sie als Bar Plot
ulf <- read.csv("ulfs_cafe.csv", header=TRUE, sep=",")
barplot(ulf$occurence, names.arg = ulf$student_count)
# plotte Poisson Verteilungen mit verschiedenen Paramtern
# 1200 ist beliebig gewählter Skalierungsfaktor, um den Bar
#  plot visuell auf "Höhe" der Poisson Verteilungen zu bringen
barplot(ulf$occurence / 1200, names.arg = ulf$student_count) 
curve(dnorm(x,9,4), add = TRUE, col = "green")
curve(dnorm(x,14,4), add = TRUE, col = "red")
curve(dnorm(x,9,8), add = TRUE, col = "blue")
