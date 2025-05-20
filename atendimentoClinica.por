programa
{
    // Importa biblioteca para gerar números aleatórios
    inclua biblioteca Util --> u

    // Vetor para representar a fila
    inteiro fila[20]

    // Variáveis para controlar o início e o fim da fila
    inteiro inicia = 0
    inteiro tam = 19, fim = -1

    // Função para enfileirar (inserir) um elemento
    funcao enfileirar(inteiro valor)
    {
        se (fim == tam) {
            escreva("Erro: Fila cheia!\n")
        }
        senao {
            fim = fim + 1
            fila[fim] = valor
            escreva("senha: ", valor, "\n")
        }
    }

    // Função para desenfileirar (remover) um elemento
    funcao desenfileirar()
    {
        se (inicia > fim) {
            escreva("Erro: Fila vazia!\n")
        }
        senao {
            escreva("Desenfileirado: ", fila[inicia], "\n")
            inicia = inicia + 1
        }
    }

    // Função para mostrar os elementos da fila
    funcao mostrarFila()
    {
        escreva("\nsenhas disponiveis:\n")
        se (inicia > fim) {
            escreva("Fila vazia\n")
        }
        senao {
            para (inteiro i = inicia; i <= fim; i = i + 1) {
                escreva(fila[i], "\n")
            }
        }
    }

    // Função para adicionar múltiplos números aleatórios à fila
    funcao adiciona_numeros()
    {
        para (inteiro j = 0; j < 10; j = j + 1) {
            inteiro valor = u.sorteia(0, 100)
            enfileirar(valor)
        }
    }

    // Função Bubble Sort para ordenar a fila
    funcao bubbleSort()
    {
        inteiro i, j, temp
        para (i = inicia; i < fim; i = i + 1) {
            para (j = inicia; j < fim - (i - inicia); j = j + 1) {
                se (fila[j] > fila[j + 1]) {
                    temp = fila[j]
                    fila[j] = fila[j + 1]
                    fila[j + 1] = temp
                }
            }
        }
        escreva("\nFila ordenada com Bubble Sort:\n")
        mostrarFila()
    }

    // Função para mesclar duas partes do vetor (Merge)
    funcao merge(inteiro inicioM, inteiro meio, inteiro fimM)
    {
        inteiro i = inicioM, j = meio + 1, k = 0
        inteiro temp[20]

        enquanto (i <= meio e j <= fimM) {
            se (fila[i] <= fila[j]) {
                temp[k] = fila[i]
                i = i + 1
            }
            senao {
                temp[k] = fila[j]
                j = j + 1
            }
            k = k + 1
        }

        enquanto (i <= meio) {
            temp[k] = fila[i]
            i = i + 1
            k = k + 1
        }

        enquanto (j <= fimM) {
            temp[k] = fila[j]
            j = j + 1
            k = k + 1
        }

        para (i = 0; i < k; i = i + 1) {
            fila[inicioM + i] = temp[i]
        }
    }

    // Função Merge Sort
    funcao mergeSort(inteiro inicioM, inteiro fimM)
    {
        se (inicioM < fimM) {
            inteiro meio = (inicioM + fimM) / 2
            mergeSort(inicioM, meio)
            mergeSort(meio + 1, fimM)
            merge(inicioM, meio, fimM)
        }
    }

    // Função principal
    funcao inicio()
    {
    	escreva("\n__________MENU ATENDIMENTO__________\n")
    	escreva("\nsenhas geradas aleatoriamente\n")
    	inicia = 0
        fim = -1
        caracter opcao
    	//senhas aleatorias
    	 adiciona_numeros()
    	 mostrarFila()
    	escreva("\nescolha um metodo de organização\n")
    	escreva("\ndigite B para bubble sort ou M para merge sort\n")
    	leia(opcao)
    	se (opcao=='B'){
    		bubbleSort()
    	}
    	se (opcao=='b'){
    		bubbleSort()
    	}
     se (opcao=='M'){
     	 mergeSort(inicia, fim)
     	 escreva("\nFila ordenada com Merge Sort:\n")
        mostrarFila()
     }
     se (opcao=='m'){
     	 mergeSort(inicia, fim)
     	 escreva("\nFila ordenada com Merge Sort:\n")
        mostrarFila()
     }
    }
}
                              
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 157; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = {fila, 7, 12, 4};
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */