
subject_name <- c("Victor Cesc","Layza Crs","Nao sei")
temperature = c(98.1,98.6,101.4)
flu_status = c(FALSE,FALSE,TRUE)
temperature[2]

temperature[2:3]

temperature[0]

temperature[1]

temperature[3]

temperature[1:3]
temperature[1:2]

temperature[-2]


temperature[c(TRUE,TRUE,FALSE)]

temperature[c(FALSE,FALSE,FALSE)]

temperature[c(FALSE,FALSE,TRUE)]

gender = factor(c("MALE","FEMALE","MALE"))
gender

blood = factor(c("O","AB","A"), levels = c("A","B","AB","O"))

blood

symptoms = factor(c("SEVERE","MILD","MODERATE"), levels = c("MILD","MODERATE","SEVERE"), ordered = TRUE)
symptoms

symptoms > "MODERATE"


# lista

lista = list(name = subject_name[1],
               temperature = temperature[1],
               flu_status = flu_status[1],
               gender = gender[1],
               blood = blood[1],
               symptoms = symptoms[1])


lista[1:5]

#criando um dataframe

pt_data = data.frame(subject_name,temperature,flu_status,gender,
                     blood,symptoms,stringAsFactors = FALSE)

#mostra o dataframe
pt_data

