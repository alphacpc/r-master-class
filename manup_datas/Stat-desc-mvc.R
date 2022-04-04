setwd("/home/alpha/Projects/r-master-class/manup_datas")

#Lire le fichier de données
mvps = read.table("mvps.csv", header = TRUE, sep="\t", quote="\"")

head(mvps)

#Creer une table de frequence
mvps <- filter(.data = mvps, Year >= 2018 & Year <= 2021)
table(mvps$Tm)

#Obtenir la valeur minimale
min(mvps$Age)

#Obtenir la valeur maximale
max(mvps$Age)

#Obtenir la valeur moyenne
mean(mvps$Age)

#Obtenir la valeur mediane
median(mvps$Age)

#Obtenir quartiles
quantile(mvps$Age)

#Obtenir l'ecart type
sd(mvps$Age)

#Obtenir la valeur totale
sum(mvps$PtsWon)

#Obtenir le coef de correlation entre Age et PtsWon
cor(x = mvps$Age, y = mvps$PtsWon)

#Resumer une table entiere
summary(mvps)
