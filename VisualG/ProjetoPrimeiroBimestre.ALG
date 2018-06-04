Algoritmo "teste Projeto"
// Disciplina  :  [Linguagem e Lógica de Programação]
// Professor   : Antonio Carlos Nicolodi
// DISCIPLINA  : [LINGUAGEM E LÓGICA DE PROGRAMAÇÃO]
// PROFESSOR   : ALDO HENRIQUE
// DESCRIÇÃO   : CONVERSÃO DE GRAUS CELSIUS EM FARENHEIT
// AUTOR(A)    : NOME ALUNO CARLOS ANTONIO CPD 40401
// DATA ATUAL  : 29/03/2018
Var
   // SEÇÃO DE DECLARAÇÕES DAS VARIÁVEIS
   Veto : vetor [0..7] de inteiro
   soma, subtracao,divisao, n1,n2,mediaI, mediaF, mediaM,resposta,decimal,totalP:real
   n,i,opcao,pessoas, idade, idadeF,idadeM,contador,contadorM,primo,dvisor,somaPrimo,cn:inteiro
   Dec,v1,sexo:caracter

Inicio
   // MENU DE OPCÕES DO PROJETO
   escreval("Escolha uma opção:")
   escreval("1. soma")
   escreval("2. subtração")
   escreval("3. divisão")
   escreval("4. faixa etária")
   escreval("5. primos")
   escreval("6. mudança de base")
   escreval("7. sair")
   escreval("Digite o número da opção escolhida:")
   leia(opcao)
   se(opcao>7) entao
      escreval("opcao inválida")
      escreval("Digite o número da opção escolhida:")
      leia(opcao)
   fimse
   enquanto (opcao<7) faca
      escolha(opcao)
//SOMA DOIS NÚMEROS E APRESENTA A SOMA
      caso 1
         escreval("informe o 1º número:")
         leia(n1)
         escreval("informe o 2º número:")
         leia(n2)
         soma<- (n1+n2)
//EXIBIR SOMA DOS NÚMEROS
         escreval("A soma é:",soma)
         escreval()
//SUBTRAÇÃO DOIS NÚMEROS E APRESENTA A SUBTRAÇÃO
      caso 2
         escreval("informe o 1º número:")
         leia(n1)
         escreval("informe o 2º número:")
         leia(n2)
         subtracao<- (n1-n2)
//EXIBIR SUBTRAÇÃO DOS NÚMEROS
         escreval("A subtracao é:",subtracao)
         escreval()
//DIVISÃO DE  NÚMEROS E APRESENTA A DIVISÃO
      caso 3
         escreval("informe o 1º número:")
         leia(n1)
         escreval("informe o 2º número:")
         leia(n2)
         divisao<- (n1/n2)
//EXIBIR DIVISÃO DOS NÚMEROS
         escreval("A divisao é:",divisao)
         escreval()
//FAIXA ETÁRIA
      caso 4
         contador<- 0
         contadorM<- 0
         idade<- 0
         idadeF<- 0
         idadeM<- 0
         mediaI<- 0
         mediaF<- 0
         mediaM<- 0
         pessoas<- 0
         totalP<-0
         escreval("Informe a quantidade de Pessoas")
         leia (pessoas)
         para I de 1 ate pessoas passo 1 faca
            escreval ("Informe a Idade")
            leia (idade)
            escreval ("Informe Sexo, use F para feminino e M para masculino")
            leia (sexo)
            se((sexo<>"F") e (sexo<>"M") )entao
            escreval("Por favor informe somente M para masculino e F para Feminino")
            escreval ("Informe Sexo, use F para feminino e M para masculino")
            leia (sexo)
            fimse
            totalP<-totalP+idade
            mediaI<-totalP/pessoas
            se (sexo="f") entao
               idadeF<-idadeF+idade
               contador<-contador+1
               mediaF<-idadeF/contador
            fimse
            se(sexo="m") entao
               idadeM<-idadeM+idade
               contadorM<-contadorM+1
               mediaM<-idadeM/contadorM
            fimse
         fimpara
//EXIBIR EXIBA OS VALORES MEDIOS DA OPERAÇÃO
         escreval ("media de Idade",mediaI)
         escreval  ("Media Idade Feminino",mediaF)
         escreval  ("Media Idade Masculino",mediaM)
//NÚMEROS PRIMOS
      caso 5
         escreval ("Digite um valor n:")
         leia (n)
         se n <= 0 entao
            escreval ("Valor inválido!")
         fimse
         para primo de 1 ate n passo 1 faca
            cn <- 0
            para dvisor de 1 ate primo passo 1 faca
               se (primo mod dvisor = 0) entao
                  cn <- cn + 1
               fimse
            fimpara
            se cn = 2 entao

               somaPrimo<- somaPrimo + primo

               escreval ("Primo: ", primo, " ")
            fimse
         fimpara

//EXIBIR SOMA DE NÚMEROS PRIMOS
         escreval("A soma dos primos:",somaPrimo)
//ZERANDO VARIÁVEL PARA EVITAR ACUMULAR VALOR
         somaPrimo<-0
//MUDANÇA DE BASE DE DECIMAL PARA BINARIO E VICE-VERSA
     caso 6
         escreval("Escolha a base B para binario ou D para decimal")
         leia (Dec)
         se (Dec="B") entao
            escreva("Informe o número decimal para conversão :")
            leia(Veto[1])
            Veto[2] <- Veto[1]
            enquanto Veto[1] > 0 faca
               se (Veto[1] mod 2) = 0 entao
                  v1 <- "0"+v1
               senao
                  v1 <- "1"+v1
               fimse
               Veto[1] <- Veto[1] div 2
            fimenquanto
            escreval("Binário:", Veto[2], " é ", V1)
//EXIBIR SOMA DE NÚMEROS BINARIO
         senao
            se (Dec="D") entao
               para i de 7 ate 0 passo -1 faca
                  Escreva ("Digite os digitos binário  ",8-i,":")
                  leia (Veto[i])
                  se (Veto[i]=1) entao
                     resposta<-1
                     para n de 1 ate i passo 1 faca
                        resposta<-resposta*2
                     fimpara
                     decimal<-decimal+Veto[i]*resposta
                  fimse
               fimpara
               escreval ("Decimal: ", decimal)
//EXIBIR SOMA DE NÚMEROS DECIMAL
            fimse
         fimse
      outrocaso
         escreval("opcao inválida")
      fimescolha
// MENU DE OPCÕES DO PROJETO
      escreval("1. soma")
      escreval("2. subtração")
      escreval("3. divisão")
      escreval("4. faixa etária")
      escreval("5. primos")
      escreval("6. mudança de base")
      escreval("7. sair")
      escreval("Digite o número da opção escolhida:")
      leia(opcao)
      fimenquanto
Fimalgoritmo
// FIM DO PSEUDOCODIGO