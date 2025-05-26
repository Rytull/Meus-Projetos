programa
{
    inclua biblioteca Util --> u
    inteiro vet[10]
    inteiro valor

    funcao inicio()
    {
        inteiro nivel

        //Menu de escolha do nível de dificuldade
        escreva("Escolha o nível de organização do vetor:\n")
        escreva("1 - Fácil (ordenado corretamente)\n")
        escreva("2 - Médio (parcialmente ordenado)\n")
        escreva("3 - Difícil (totalmente desordenado)\n")
        escreva("Digite sua opção: ")
        leia(nivel)

        //Irá preencher o vetor conforme o nível escolhido pelo usário
        preencheVetor(nivel, vet)

        //Se o nível for fácil ou médio, ordenamos antes da busca binária
        se (nivel == 1) {
            ordenaVetor(vet)
        }
        // Se for médio, ordenamos e aplicamos leve embaralhamento
        senao se (nivel == 2) {
            ordenaVetor(vet) 
            embaralhar_minimamente(vet) 
        }

        //Mostra o conteúdo do vetor
        escreva("\nValores no vetor:\n")
        para (inteiro i = 0; i < 10; i++) {
            escreva(vet[i], "; ") 
        }

        //Se o nível for difícil, apenas exibe a mensagem e não realiza busca binária
        se (nivel == 3) {
            escreva("\nO vetor está desordenado! A busca binária não pode ser realizada.\n")
            retorne
        }

         //Solicitação do valor a ser encontrado (caso nível não seja difícil)
        escreva("\nDigite o valor a ser encontrado: ")
        leia(valor)

        //Executa a busca binária (somente nos níveis ordenados)
        busca_binaria(vet, valor)
    }

    //Preenchimento do vetor com base no nível de dificuldade
    funcao preencheVetor(inteiro nivel, inteiro vetor[])
    {
        para (inteiro i = 0; i < 10; i++) {
            vetor[i] = u.sorteia(1, 100) 
        }
    }

    //Ordenação do vetor (Bubble Sort)
    funcao ordenaVetor(inteiro vetor[])
    {
        inteiro i, j, aux
        para (i = 0; i < 10; i++) {
            para (j = 0; j < 9; j++) {
                se (vetor[j] > vetor[j + 1]) {
                    aux = vetor[j]
                    vetor[j] = vetor[j + 1]
                    vetor[j + 1] = aux
                }
            }
        }
    }

    //Função para embaralhar minimamente o vetor (pequenas trocas controladas)
    funcao embaralhar_minimamente(inteiro vetor[])
    {
        troca_valores(vetor, 0, 1)
        troca_valores(vetor, 3, 4)
        troca_valores(vetor, 6, 7)
    }

    //Função para realizar busca binária
    funcao busca_binaria(inteiro vetor[], inteiro valor)
    {
        inteiro inicio = 0
        inteiro fim = 9
        inteiro meio
        logico encontrado = falso

        enquanto (inicio <= fim) {
            meio = (inicio + fim) / 2

            se (vetor[meio] == valor) {
                escreva("\nValor encontrado na posição: ", meio)
                encontrado = verdadeiro
                pare
            }
            senao se (valor < vetor[meio]) {
                fim = meio - 1
            }
            senao {
                inicio = meio + 1
            }
        }

        se (encontrado == falso) {
            escreva("\nValor não encontrado no vetor.")
        }
    }

    //Função para trocar dois valores no vetor
    funcao troca_valores(inteiro vetor[], inteiro pos1, inteiro pos2)
    {
        inteiro aux
        aux = vetor[pos1]
        vetor[pos1] = vetor[pos2]
        vetor[pos2] = aux
    }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 2535; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {vet, 4, 12, 3}-{vetor, 84, 33, 5}-{valor, 84, 50, 5};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */