algoritmo // PESQUISA_BIN�RIA (cap0701.por)
declare
  VLR[10], I, J, COMECO, FINAL, MEIO, PESQ, X numerico
  RESP literal
  ACHA logico 
  para I <- 1 ate 10 faca 
    inicio
      leia VLR[I]
    fim
  // {*** in�cio trecho de ordena��o ***}
  para I <- 1 ate 9 faca
    inicio
      para J <- I + 1 ate 10 faca 
      inicio
        se (VLR[I] > VLR[J]) entao
          inicio
            X <- VLR[I]
            VLR[I] <- VLR[J]
            VLR[J] <- X
          fim
      fim
    fim
  // {*** fim trecho de ordena��o ***}
  // {*** in�cio trecho de pesquisa bin�ria ***}
  RESP <- "S"
  enquanto (RESP = "S") ou (RESP = "s") faca
    inicio
      escreva "Entre valor a ser pesquisado:"
      leia PESQ
      COMECO <- 1
      FINAL <- 10
      ACHA <- falso
      enquanto (COMECO <= FINAL) e (ACHA = falso) faca
        inicio
          MEIO <- div(COMECO + FINAL, 2)
          se (PESQ = VLR[MEIO]) entao
            ACHA <- verdadeiro
          senao
            se (PESQ < VLR[MEIO]) entao
              FINAL <- MEIO - 1
            senao
              COMECO <- MEIO + 1
        fim
      se (ACHA = verdadeiro) entao
        escreva PESQ, " foi localizado na posicao ", MEIO
      senao
        escreva PESQ, " n�o foi localizado"
      escreva "Deseja continuar? (S)/(N)AO:"
      leia RESP
    fim
  // {*** fim trecho de pesquisa bin�ria ***}
fim_algoritmo.

sub-rotina div(DIVIDENDO, DIVISOR numerico)
declare
  QUOCIENTE numerico
  QUOCIENTE <- 0
  enquanto (DIVISOR <= DIVIDENDO) faca
    inicio
      DIVIDENDO <- DIVIDENDO - DIVISOR
      QUOCIENTE <- QUOCIENTE + 1
    fim
  retorne QUOCIENTE
fim_sub_rotina div
