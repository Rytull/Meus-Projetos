programa
{
	
	inclua biblioteca Texto
	
	 inteiro idade,i,quantidade
    cadeia nome,aluno,email,matriculaaluno,curso,turno,responsavel,emailResponsavel,telefone,Vermail,matricula[10],Vemail
    caracter opcao
  
	
	funcao inicio()
	{
		para(i=0;i<10;i++){	
		 escreva("\n________________________________________________\n")
    		escreva("\nBem vindo ao sistema de cadastramento escolar!\n")
    		escreva("________________________________________________\n")
  		  escreva("\nCADASTRO ESCOLAR:\n")
			escreva ("digite a matricula do aluno",i,":\n")
			leia(matricula[i])
			verificarMatricula()
			dados()
			escreva("\ncadastro concluido com sucesso\n")
			escreva("\ndeseja cadastrar proximo aluno?")
			escreva("\ndigite S para proximo aluno e N para finalizar\n")
			 leia (opcao)
			 se( opcao=='N'){
			 	pare}
			 	se(opcao=='n'){
			 		pare
			 	
			 }
			
		}
		
	}
	
	funcao dados()
	{
	escreva("digite a idade do aluno:\n")
    leia(idade)
  	veririficarIdade()
    se(idade<0){
    escreva("tente novamente!\n")
    escreva("________________________________________________\n")
      dados()
    }
    escreva("digite o nome do aluno:\n")
    leia(aluno)
   email = LerEmail()
    escreva("\nEmail validado com sucesso: ", email)
    escreva("\ndigite o curso do aluno:\n")
    leia(curso)
    escreva("digite o turno do aluno (manha,tarde ou noite):\n")
    leia(turno)
    //caso aluno seja menor de idade
    se(idade>0 e idade<18){
     escreva("digite o nome do responsavel pelo aluno:\n")
    leia(responsavel)
    emailResponsavel= verificarEmail()
    escreva("\nEmail validado com sucesso: ",emailResponsavel)
    escreva("\ndigite o telefone do responsavel pelo aluno:\n")
    leia(telefone)
    escreva("________________________________________________\n")
    escreva ("\nDADOS INSERIDOS:\n")
    escreva("nome do aluno:",aluno,"\n")
    escreva("idade:",idade,"\n")
    escreva("email:",email,"\n")
    escreva("matricula:",matricula[i],"\n")
    escreva("curso:",curso,"\n")
    escreva("turno:",turno,"\n")
    escreva("nome do responsavel:",responsavel,"\n")
    escreva("email do responsavel:",emailResponsavel,"\n")
    escreva("telefdone do responsavel:",telefone,"\n")
    }
    //caso aluno seja maior de idade
    se(idade>=18){
   escreva("________________________________________________\n")
   escreva ("\nDADOS INSERIDOS:\n")
    escreva("nome:",aluno,"\n")
    escreva("idade:",idade,"\n")
    escreva("email:", email,"\n")
    escreva("matricula:",matricula[i],"\n")
    escreva("curso:",curso,"\n")
    escreva("turno:",turno,"\n")
  
    }
	}
    //verificar se aluno e maior de idade
    funcao  veririficarIdade(){
     se(idade<0){
      escreva("***idade invalida!***\n")
     }senao{
      escreva("***idade valida!***\n")
     }
    }
    funcao concluido(){
       escreva ("Cadastro concluido com sucesso!\n")
      
    }
    funcao verificarMatricula()
	{
		se( matricula[1]==matricula[0]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
	}
		se( matricula[1]==matricula[2]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		
		se( matricula[2]==matricula[0]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
	     }
	
		se( matricula[3]==matricula[2]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		
		se( matricula[3]==matricula[1]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		
		}
		se( matricula[3]==matricula[0]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[4]==matricula[3]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[4]==matricula[2]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[4]==matricula[1]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[4]==matricula[0]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[5]==matricula[4]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[5]==matricula[3]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[5]==matricula[2]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[5]==matricula[1]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[5]==matricula[0]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[6]==matricula[5]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[6]==matricula[4]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[6]==matricula[3]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[6]==matricula[2]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		
		}
		se( matricula[6]==matricula[1]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[6]==matricula[0]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[7]==matricula[6]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[7]==matricula[5]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[7]==matricula[4]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[7]==matricula[3]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[7]==matricula[2]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[7]==matricula[1]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[7]==matricula[0]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[8]==matricula[7]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[8]==matricula[6]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[8]==matricula[5]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[8]==matricula[4]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[8]==matricula[3]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[8]==matricula[2]){
		escreva("matricula ja existente")
		escreva("digite novamente")
		leia(matricula[i])
		}
		se( matricula[8]==matricula[1]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[8]==matricula[0]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[9]==matricula[8]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[9]==matricula[7]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[9]==matricula[6]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[9]==matricula[5]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[9]==matricula[4]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[9]==matricula[3]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[9]==matricula[2]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[9]==matricula[1]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
		se( matricula[9]==matricula[0]){
		escreva("matricula ja existente\n")
		escreva("digite novamente\n")
		leia(matricula[i])
		}
	}
	 funcao cadeia LerEmail() {
    cadeia Vemail
    inteiro temArroba, temPonto

    faca {
      escreva("Digite seu email:\n ")
      leia(Vemail)

      temArroba = Texto.posicao_texto("@", Vemail, 0)
      temPonto = Texto.posicao_texto(".com", Vemail, 0)

      se(temArroba <= 0 e temPonto <= 0) {
        escreva("\nSeu email não contém '@' e '.com'. Tente novamente.\n\n")
      } senao se(temArroba <= 0) {
        escreva("\nSeu email não contém '@'. Tente novamente.\n\n")
      } senao se(temPonto <= 0) {
        escreva("\nSeu email não contém '.com'. Tente novamente.\n\n")
      }

    } enquanto(temArroba <= 0 ou temPonto <= 0)

    retorne Vemail
  }
  funcao cadeia verificarEmail() {
    cadeia Vermail
    inteiro temArrobar, temPontor

    faca {
      escreva("Digite o email do responsavel: ")
      leia(Vermail)

      temArrobar = Texto.posicao_texto("@", Vermail, 0)
      temPontor = Texto.posicao_texto(".com", Vermail, 0)

      se(temArrobar <= 0 e temPontor <= 0) {
        escreva("\nSeu email não contém '@' e '.com'. Tente novamente.\n\n")
      } senao se(temArrobar <= 0) {
        escreva("\nSeu email não contém '@'. Tente novamente.\n\n")
      } senao se(temPontor <= 0) {
        escreva("\nSeu email não contém '.com'. Tente novamente.\n\n")
      }

    } enquanto(temArrobar <= 0 ou temPontor <= 0)

    retorne Vermail
  }
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 10148; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */