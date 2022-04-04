setwd("/home/alpha/Projects/r-master-class/manup_datas")

mvps <- read.csv("mvps.csv", header = TRUE, sep = "\t")

head(mvps)

#Changer la librairie ggplot2
library(ggplot2)
 
#Creer un diagramme à barre de frequence
ggplot(data = mvps, aes(x = Age)) +
  geom_bar() +
  ggtitle("Nombre des joueurs par Ages") +
  xlab("Ages") +
  ylab("Nombre de joueurs")

#Creer un histogramme
ggplot(data = mvps, aes(x = Year)) +
  geom_histogram( bins = 10) +
  ggtitle("Repartition des joueurs par Age") +
  xlab("Ages") +
  ylab("Nombre de joueurs")

#creer un nuage de points
ggplot(data = mvps, aes(x = Year, y = Age)) +
  geom_point() + 
  ggtitle("Repartition des joueurs") + 
  xlab("Nombre d'annee") +
  ylab("Nombre d'age")
