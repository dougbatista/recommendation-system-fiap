library(readr)
Arq_trab3 <- read_csv("Arq_trab3.csv")

attach(Arq_trab3)
# Mudar o tipo de vari�vel (quantitativa para qualitativa)
sexo<-as.factor(Sexo)
cor_pele<-as.factor(Cor_pele)


#Distribui��o de frequ�ncia para vari�vel Sexo
fa_pop=table(sexo) ##frequencia absoluta
fr_pop=fa_pop/sum(fa_pop) ##frequencia relativa
fp_pop=100*fr_pop ##fp=frequencia percentual
dist_pop=cbind(fa_pop,fp_pop) ##distribuicao de frequ�ncias
dist_pop


summary(idade)
summary(Anos_estudo)

# Sortear uma amostra aleat�ria simples
amostra <- Arq_trab3[sample(1: nrow (Arq_trab3), 40, replace=FALSE),]


# Mudar o tipo de vari�vel (quantitativa para qualitativa)
Sexo_amostra<-as.factor(amostra$Sexo)
cor_pele_amostra<-as.factor(amostra$Cor_pele)


#Distribui��o de frequ�ncia para vari�vel Sexo
fa_ams=table(amostra$Sexo) ##frequencia absoluta
fr_ams=fa_ams/sum(fa_ams) ##frequencia relativa
fp_ams=100*fr_ams ##fp=frequencia percentual
dist_ams=cbind(fa_ams,fr_ams,fp_ams) ##distribuicao de frequ�ncias
dist_ams

summary(amostra$idade)

summary(amostra$Anos_estudo)

#Total de clientes com telefone m�vel
k <- sum(amostra$Telefone_movel== 2); k

# Propor��o de clientes com telefone m�vel (prop=total de clientes com telefone/n)
prop_tel = k/40; prop_tel

# Erro padr�o
SE = sqrt(prop_tel*(1-prop_tel)/40); SE
#Margem de erro
E = qnorm(.975)*SE; E
#Intervalo de confian�a para propor��o
prop_tel + c(-E, E)







