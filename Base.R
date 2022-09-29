#### Questão 1 ####
utilidade_1 <- function(w){
  return(w-(1/2)*w^2)
}
#Criando as loterias de utilidade
a <- c(utilidade_1(5),
       utilidade_1(6),
       utilidade_1(9))
a
b <- c(utilidade_1(4),
       utilidade_1(7),
       utilidade_1(10))
b
c <- c(utilidade_1(1),
       utilidade_1(9),
       utilidade_1(18))
c
#Setando a prob:
a_prob <- c(
  1/3, 1/3, 1/3
)
b_prob <- c(
  1/4,1/2,1/4
)
c_prob <- c(
  1/5,3/5,1/5
)
#Calculando as esperancas
a_esp <- sum(a * a_prob)
a_esp

b_esp <- sum(b * b_prob)
b_esp

c_esp <- sum(c * c_prob)
c_esp

#### Questão 2 ####
utilidade_2 <- function(w){
  return(-w^-(1/2))
}
#Criando as loterias de utilidade
q2_a <- c(utilidade_2(5),
          utilidade_2(6),
          utilidade_2(9))
q2_a
q2_b <- c(utilidade_2(4),
          utilidade_2(7),
          utilidade_2(10))
q2_b
q2_c <- c(utilidade_2(1),
          utilidade_2(9),
          utilidade_2(18))
q2_c
#Setando a prob:
a_prob <- c(
  1/3, 1/3, 1/3
)
b_prob <- c(
  1/4,1/2,1/4
)
c_prob <- c(
  1/5,3/5,1/5
)
#Calculando as esperancas
q2_a_esp <- sum(q2_a * a_prob)
q2_a_esp

q2_b_esp <- sum(q2_b * b_prob)
q2_b_esp

q2_c_esp <- sum(q2_c * c_prob)
q2_c_esp
#### Questão 3 #### 
# Loterias
q3_lot_a <- c(7,10,14)
q3_lot_b <- c(5,12,20)
# Probabilidade das loterias
q3_prob_a <- c(2/5,1/5,2/5)
q3_prob_b <- c(1/2,1/4,1/4)
# Utilidade
q3_util <- function(w){
  return(2*w-0.04*w^2)
}
# Utilidade das loterias
q3_lot_a_util <- sapply(q3_lot_a,q3_util)
q3_lot_b_util <- sapply(q3_lot_b,q3_util)
# Esperanca da utilidade
q3_esp_lot_a_util <- sum(q3_lot_a_util * q3_prob_a)
q3_esp_lot_a_util
q3_esp_lot_b_util <- sum(q3_lot_b_util * q3_prob_b)
q3_esp_lot_b_util
