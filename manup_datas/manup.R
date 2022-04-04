setwd("/home/alpha/Projects/r-master-class/manup_datas")

#Lire le fichier de données
players = read.table("players.csv", header = TRUE, sep = ";")

#Affichage des six premiers lignes
head(players)

#Utilisation de dplyr
library("dplyr")

#Selection d'un sous-ensemble de lignes
temp <- select(.data = players, Year, Player, Age, Pos, PTS)
