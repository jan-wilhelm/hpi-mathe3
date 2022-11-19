# Lade daten von ulf
ulf <- read.csv("ulfs_cafe.csv", header=TRUE, sep=",")
# plotte Poisson Verteilungen mit verschiedenen Paramtern
# 1200 ist beliebig gewählter Skalierungsfaktor, um den Bar
# plot visuell auf "Höhe" der Poisson Verteilungen zu bringen
barplot(ulf$occurence / 950, names.arg = ulf$student_count) 
lines(dpois(0:20,lambda = 5), col = "green")
lines(dpois(0:20,lambda = 7), col = "red")
lines(dpois(0:20,lambda = 9), col = "blue")

# bewohner
bewohner <- read.csv("bewohner_grossdorf.csv", header = TRUE, sep = ",")
# Plotte verschiedene Normalverteilungen (Aufgabe 4.4c)
# freq=FALSE weil wir es normiert haben wollen auf Höhe der Dichtefunktion
hist(bewohner$height, breaks = 20, main = "Verteilung der Höhe", freq = FALSE)
curve(dnorm(x,160,10), add = TRUE, col = "green")
curve(dnorm(x,180,10), add = TRUE, col = "red")
curve(dnorm(x,180,20), add = TRUE, col = "blue")
