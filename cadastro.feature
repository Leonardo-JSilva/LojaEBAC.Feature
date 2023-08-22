            #language: pt

            Funcionalidade: tela de cadastro

            Contexto:
            Dado que eu acesse a página de cadastro da loja EBAC

            Cenário: cadastro válido
            Quando eu preencher o campo de "Nome, sobrenome, País, endereço, cidade , CEP, Telefone"
            E preencher campo de email, com um email válido "leonardo@ebac.com.br"
            Então deve exibir uma mensagem "cadastro concluido com sucesso"

            Cenário: cadastro inválido
            Quando eu preencher o campo de "Nome, sobrenome, País, endereço, cidade, CEP, Telefone"
            E preencher campo de email "llljjj@ebac.br.com.us"
            Então deve exibir uma mensagem de alerta "email inválido"

            Cenário: Campos obrigatórios não preenchidos
            Quando campos obrigatórios não forem todos preenchidos "Nome, sobrenome, País, endereço, cidade, CEP, Telefone"
            E preencher campo de email, com um email válido "leonardo@ebac.com.br"
            Então deve exibir uma mensagem de alerta "campos obrigatórios não preenchidos"

            Esquema do Cenário: Cadastrar multiplos clientes
            Quando eu preencher <nome>, <sobrenome>, <pais>, <endereco>, <cidade>, <cep> e <email>
            E o clicar no botão concluir cadastro
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | nome       | sobrenome | Pais     | endereço               | cidade           | cep          | email                  |
            | "leonardo" | "silva"   | "brasil" | "rua nove de julho"    | "sao paulo       | 08262-166"   | "leonardo@ebac.com.br" |
            | "lenadro"  | "alves"   | "brasil" | "rua das mantiqueiras" | "sao paulo"      | "088123-661" | "lenadro@ebac.cob.br"  |
            | "vitoria"  | "pardini" | "brasil" | "barra da tijuca"      | "rio de janeiro" | "09321-161"  | "vitoria@ebac.com.br"  |