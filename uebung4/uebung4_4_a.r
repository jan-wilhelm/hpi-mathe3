# Lade daten von ulf, plotte sie als Bar Plot
ulf <- read.csv("ulfs_cafe.csv", header=TRUE, sep=",")
barplot(ulf$occurence, names.arg = ulf$student_count)

# bewohner
bewohner <- read.csv("bewohner_grossdorf.csv", header = TRUE, sep = ",")
hist(bewohner$height, breaks = 20, main = "Verteilung der Höhe")