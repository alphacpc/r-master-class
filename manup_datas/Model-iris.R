setwd("/home/alpha/Projects/r-master-class/manup_datas")

#Charger les donnees Iris
data(iris)

head(iris)

#Creer un nuage de points
plot(
  y = iris$Petal.Width,
  x = iris$Petal.Length,
  main = "Largeur des petales d'iris par rapport à la longueur",
  ylab = "Largeur des petales (cm)",
  xlab = "Longueur des petales (cm)"
)

#Creer un modele de regression lineaire
model <- lm(
  formula = Petal.Width ~ Petal.Length,
  data = iris
)

#Resumer le modele
summary(model)

#Tracer une ligne de regression sur le graphique
lines(
  x = iris$Petal.Length,
  y = model$fitted,
  col = "red",
  lwd = 1
)

#Obtenir le coef de correlation
cor(x = iris$Petal.Length, y = iris$Petal.Width)

#Predire de nouvelles valeurs à partir du modele
predict(
  object = model,
  newdata = data.frame(Petal.Length = c(2,4,8))
)
