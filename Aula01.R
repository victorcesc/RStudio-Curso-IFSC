
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
