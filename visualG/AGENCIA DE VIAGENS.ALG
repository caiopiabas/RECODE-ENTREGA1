Algoritmo "Ag�ncia de Viagens"
//Usando conceitos de programa��o estruturada (Vetor), criar em pseudoc�digo
//um menu para simular um cadastro para uma ag�ncia de viagens com as seguintes
//fun��es: cadastro de cliente e cadastro de destino, criar tamb�m uma consulta
//para cada estrutura de dados.

const

   maxI = 10

Var

   clientes: vetor [1..maxI] de caractere
   destinos: vetor [1..maxI] de caractere
   opcao: caracter
   i: inteiro


procedimento menuCadastro()

var

   opcaop: caractere

inicio

   enquanto (opcaop <> "S") e (opcaop <> "s") faca
      i <- i+1
      escreval()
      escreva("Infome nome para cadastro: ")
      leia(clientes[i])
      escreva("Infome destino para cadastro: ")
      leia(destinos[i])
      repita
         escreval("Sair do menu? (S/N)")
         leia(opcaop)
         se ((opcaop <> "S") e (opcaop <> "s")) e ((opcaop <> "N") e (opcaop <> "n")) entao
            escreval ("Op��o Inv�lida!")
         fimse
      ate ((opcaop = "S") ou (opcaop = "s")) ou ((opcaop = "N") ou (opcaop = "n"))
   fimenquanto

fimprocedimento


procedimento menuConsultaCliente()

var

   i: inteiro

inicio
   i <- 1
   escreval()
   escreval("Resultado da consulta!")
   enquanto clientes[i] <> "" faca
      escreval()
      escreval("O cliente ", clientes[i], " tem destino ", destinos[i], "!")
      i <- i + 1
   fimenquanto
   escreval()

fimprocedimento

Inicio

   escreval(" ---------- Seja bem-vindo, GiraMundo ----------")
   escreval()
   escreval("======================================================")
   escreval()

   enquanto (opcao <> "S") e (opcao <> "s") faca
      escreval()
      escreval("Escolha (1) para cadastro, (2) para consultar")
      escreval("e (S) para sair do sistema!")
      leia(opcao)
      se opcao = ("1") entao
         menuCadastro()
      senao
         se opcao = ("2") entao
            menuConsultaCliente()
         senao
            se (opcao <> "S") e (opcao <> "s") entao
               escreval("Op��o Inv�lida!")
               escreval()
            fimse
         fimse
      fimse
   fimenquanto

fimalgoritmo