Algoritmo "teste Projeto"
// Disciplina  :  [Linguagem e L�gica de Programa��o]
// Professor   : Antonio Carlos Nicolodi
// DISCIPLINA  : [LINGUAGEM E L�GICA DE PROGRAMA��O]
// PROFESSOR   : ALDO HENRIQUE
// DESCRI��O   : CONVERS�O DE GRAUS CELSIUS EM FARENHEIT
// AUTOR(A)    : NOME ALUNO CARLOS ANTONIO CPD 40401
// DATA ATUAL  : 29/03/2018
Var
   // SE��O DE DECLARA��ES DAS VARI�VEIS
   Veto : vetor [0..7] de inteiro
   soma, subtracao,divisao, n1,n2,mediaI, mediaF, mediaM,resposta,decimal,totalP:real
   n,i,opcao,pessoas, idade, idadeF,idadeM,contador,contadorM,primo,dvisor,somaPrimo,cn:inteiro
   Dec,v1,sexo:caracter

Inicio
   // MENU DE OPC�ES DO PROJETO
   escreval("Escolha uma op��o:")
   escreval("1. soma")
   escreval("2. subtra��o")
   escreval("3. divis�o")
   escreval("4. faixa et�ria")
   escreval("5. primos")
   escreval("6. mudan�a de base")
   escreval("7. sair")
   escreval("Digite o n�mero da op��o escolhida:")
   leia(opcao)
   se(opcao>7) entao
      escreval("opcao inv�lida")
      escreval("Digite o n�mero da op��o escolhida:")
      leia(opcao)
   fimse
   enquanto (opcao<7) faca
      escolha(opcao)
//SOMA DOIS N�MEROS E APRESENTA A SOMA
      caso 1
         escreval("informe o 1� n�mero:")
         leia(n1)
         escreval("informe o 2� n�mero:")
         leia(n2)
         soma<- (n1+n2)
//EXIBIR SOMA DOS N�MEROS
         escreval("A soma �:",soma)
         escreval()
//SUBTRA��O DOIS N�MEROS E APRESENTA A SUBTRA��O
      caso 2
         escreval("informe o 1� n�mero:")
         leia(n1)
         escreval("informe o 2� n�mero:")
         leia(n2)
         subtracao<- (n1-n2)
//EXIBIR SUBTRA��O DOS N�MEROS
         escreval("A subtracao �:",subtracao)
         escreval()
//DIVIS�O DE  N�MEROS E APRESENTA A DIVIS�O
      caso 3
         escreval("informe o 1� n�mero:")
         leia(n1)
         escreval("informe o 2� n�mero:")
         leia(n2)
         divisao<- (n1/n2)
//EXIBIR DIVIS�O DOS N�MEROS
         escreval("A divisao �:",divisao)
         escreval()
//FAIXA ET�RIA
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
//EXIBIR EXIBA OS VALORES MEDIOS DA OPERA��O
         escreval ("media de Idade",mediaI)
         escreval  ("Media Idade Feminino",mediaF)
         escreval  ("Media Idade Masculino",mediaM)
//N�MEROS PRIMOS
      caso 5
         escreval ("Digite um valor n:")
         leia (n)
         se n <= 0 entao
            escreval ("Valor inv�lido!")
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

//EXIBIR SOMA DE N�MEROS PRIMOS
         escreval("A soma dos primos:",somaPrimo)
//ZERANDO VARI�VEL PARA EVITAR ACUMULAR VALOR
         somaPrimo<-0
//MUDAN�A DE BASE DE DECIMAL PARA BINARIO E VICE-VERSA
     caso 6
         escreval("Escolha a base B para binario ou D para decimal")
         leia (Dec)
         se (Dec="B") entao
            escreva("Informe o n�mero decimal para convers�o :")
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
            escreval("Bin�rio:", Veto[2], " � ", V1)
//EXIBIR SOMA DE N�MEROS BINARIO
         senao
            se (Dec="D") entao
               para i de 7 ate 0 passo -1 faca
                  Escreva ("Digite os digitos bin�rio  ",8-i,":")
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
//EXIBIR SOMA DE N�MEROS DECIMAL
            fimse
         fimse
      outrocaso
         escreval("opcao inv�lida")
      fimescolha
// MENU DE OPC�ES DO PROJETO
      escreval("1. soma")
      escreval("2. subtra��o")
      escreval("3. divis�o")
      escreval("4. faixa et�ria")
      escreval("5. primos")
      escreval("6. mudan�a de base")
      escreval("7. sair")
      escreval("Digite o n�mero da op��o escolhida:")
      leia(opcao)
      fimenquanto
Fimalgoritmo
// FIM DO PSEUDOCODIGO