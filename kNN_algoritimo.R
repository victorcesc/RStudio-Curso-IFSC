wbcd = read.csv("wisc_bc_data.csv",stringsAsFactors = FALSE)

str(wbcd)

#retira a primeira coluna
wbcd = wbcd[-1]

# pegaa o diagnostico do dataframe, pra verificar se o dado nao é muito tendencioso, 
#se tem o mesmo valor ou
#valores parecidos pros dois lados

table(wbcd$diagnosis)

#recodificacao do diagnostico como factor, criando uma classe para fazer a classificaçao
wbcd$diagnosis = factor(wbcd$diagnosis,levels = c("B","M"),labels = c("Benign","Malignant"))

#tabela de proporcoes com mais rotulos informativos
round(prop.table(table(wbcd$diagnosis))* 100, digits = 1)

#analise da parte estatistica em 3 valores numericos
summary(wbcd[c("radius_mean","area_mean","smoothness_mean")])

#apartir disso como o kNN nao ajusta valores muito desconexos precisa-se fazer uma normalização
normalize = function(x){
  return ( (x-min(x))/(max(x)-min(x)) )
}

#normalizando os dados
#tira a primeira linha que é o diagnostico agora(porque ja excluimos a linha ID)
#normalizado as outras
wbcd_n = as.data.frame(lapply(wbcd[2:31],normalize))

#confirmando que a normalização 
summary(wbcd_n$area_mean)


#criando um training e test data
wbcd_train = wbcd_n[1:469,] #todas as linhas e todas as colunas
wbcd_test = wbcd_n[470:569,]#linha 470 ate 569 e todas as colunas



#criando rotulos para training e test data
wbcd_train_labels = wbcd[1:469,1]
wbcd_test_labels = wbcd[470:569,1]

wbcd_test_pred = knn(train = wbcd_train,test = wbcd_test,cl = wbcd_train_labels,k=21)

#tem que instalar o pacote gmodels
library(gmodels)
CrossTable(x = wbcd_test_labels,y = wbcd_test_pred, prop.chisq = FALSE)
