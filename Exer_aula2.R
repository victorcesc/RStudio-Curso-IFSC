wine =  read.csv("wine.csv",stringsAsFactors = TRUE)

str(wine)

hist(wine$Price)

summary(wine$Price)

cor(wine[c("Age","Price","WinterRain","HarvestRain","Year")])

#melhor modelo que achei R-squared = 85%
wine_model_1 = lm(Price ~  HarvestRain + AGST * FrancePop * Year * WinterRain, data= wine)


summary(wine_model_1)

wine_model_2 = lm(Price ~ AGST,data=wine)

plot(wine$AGST,wine$Price)
abline(wine_model_2$coefficients,col="red")

#predict(wine_model,)

cor(wine)

