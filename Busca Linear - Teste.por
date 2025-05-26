programa
{
    
    inteiro vetor[4]
    inteiro valor

    funcao inicio()
    {
        inteiro i, nivel

        // Escolha do nível de dificuldade
        escreva("Escolha o nível de organização do vetor:\n")
        escreva("1 - Fácil (ordenado)\n")
        escreva("2 - Médio (parcialmente ordenado)\n")
        escreva("3 - Difícil (desordenado)\n")
        escreva("Digite sua opção: ")
        leia(nivel)

        // Preenchendo o vetor conforme o nível escolhido
        se (nivel == 1) {
            vetor[0] = 1
            vetor[1] = 2
            vetor[2] = 3
            vetor[3] = 4
        }
        senao se (nivel == 2) {
            vetor[0] = 3
            vetor[1] = 1
            vetor[2] = 4
            vetor[3] = 2
        }
        senao {
            vetor[0] = 4
            vetor[1] = 2
            vetor[2] = 1
            vetor[3] = 3
        }

        // Mostrando os valores do vetor
        escreva("\nValores no vetor:")
        para (i=0; i<4; i++) {
            escreva("\nPosição ", i, ": ", vetor[i])
        }

        // Solicitação do valor a ser encontrado
        escreva("\nDigite o valor a ser encontrado: ")
        leia(valor)

        // Busca linear do valor dentro do vetor
        para (inteiro j=0; j<4; j++){
            se (valor == vetor[j]){
                escreva("\nO valor está na posição: ", j)
            }
        }
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 20; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vetor, 4, 12, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */