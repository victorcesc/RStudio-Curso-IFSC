insurance = read.csv("insurance.csv",stringsAsFactors = TRUE)

str(insurance)

summary(insurance$expenses)

hist(insurance$expenses)

table(insurance$sex)

table(insurance$region)

table(insurance$smoker)

cor(insurance[c("age","bmi","children","expenses")])


ins_model = lm(expenses ~ age + children + bmi + sex + smoker + region, data= insurance)

#ins_model

summary(ins_model)

ins_model = lm(expenses ~ age + children + bmi + smoker, data= insurance)

summary(ins_model)

lm(formula = expenses ~ . , data=insurance)

insurance$age2 = insurance$age^2

ins_model = lm(expenses ~ age2 + children + bmi + smoker, data= insurance)

summary(ins_model)


insurance$bmi30 = ifelse(insurance$bmi >= 30 ,1 ,0)


ins_model = lm(expenses ~ age2 + children + bmi*smoker, data= insurance)

summary(ins_model)



