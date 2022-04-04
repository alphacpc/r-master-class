setwd("/home/alpha/Projects/r-master-class/manup_datas")

#Lire le fichier de données
mvps = read.table("mvps.csv", header = TRUE, sep="\t", quote="\"")

#Affichage des six premiers lignes
head(mvps)

#Utilisation de dplyr
library("dplyr")

#Selection d'un sous-ensemble de colonnes
temp <- select(.data = mvps, Year, Player,  Age, PtsWon, Share, PTS)

head(temp)

#Selection d'un sous-ensemble de ligne
temp_year <- filter(.data = temp, Year >= 2018 & Year <= 2021)

head(temp_year)

#Grouper par une colonne
temp_year <- group_by(.data= temp_year, Year)

head(temp_year)

#Organiser les lignes dans l'ordre decroissant
temp_year <- arrange(.data=temp_year, desc(Year))

head(temp_year)

#Convertir en data frame
df_mvc <- as.data.frame(temp_year)

#Inspecter le resultat
print(df_mvc)

#Chaine des methodes ensemble
dframe_mvc <- mvps %>%
  select(Year, Player,  Age, PtsWon, Share, PTS) %>%
  filter( Year >= 2014)
  group_by(Year) %>%
  arrange(desc(Year)) %>%
  as.data.frame()

print(dframe_mvc)

#Enregistrer les resultats dans un fichier csv
write.csv(
  x = dframe_mvc,
  file = "Mvp-2014-2021.csv",
  row.names = FALSE
)
