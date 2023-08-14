            #Language: pt

            Funcionalidade: tela de carrinho
            Como cliente da loja EBAC
            Quero configurar meu produto de acordo com tamanho e gosto
            Para depois inserir no carrinho

            Contexto:
            Dado seleções de cor, tamanho e quantidade devem ser obrigatórios

            Cenário: Produto válido
            Quando eu selecionar o "produto", "quantidade"
            E o "tamanho"
            Então deve exibir uma opção "adicionar ao carrinho"

            Cenário: Produto inválido
            Quando eu selecionar o "produto"
            E o "tamanho"
            Então deve exibir uma mensagem "escolha a quantidade"

            Cenário: Produto inválido
            Quando eu selecionar "produto"
            E "quantidade"
            Então deve exibir uma mensagem "escolha o tamanho"

            Esquema do Cenário: Remover produtos do carrinho
            Quando eu selecionar o <produto>
            E cliquar em <limpar>
            Então deve exibir uma <mensagem> de sucesso

            Exemplos:
            | produtos | limpar   | mensagem           |
            | "camisa" | "limpar" | "produto removido" |
            | "blusa"  | "limpar" | "produto removido" |
            | "tenis"  | "limapr" | "produto removido" |

            #language: pt

            Funcionalidade: tela de login
            Como cliente da loja EBAC
            Quero me autenticar
            Para visualizar meus pedidos

            Contexto:
            Dado que eu acesse a página de autenticação da loja EBAC

            Cenário: autenticação válida
            Quando eu digitar o usuário "leonardo@ebac.com.br"
            E a senha "ebac12345"
            Então deve exibir uma mensagem de "pedidos no carrinho"

            Cenário: usuarío inexistente
            Quando eu digitar o usuário "llljjj@ebac.com.br"
            E a senha "ebac12345"
            Então deve exibir uma mensagem de alerta "usuário inexistente"

            Cenário: senha inválida
            Quando eu digitar o usuário "leonardo@ebac.com.br"
            E a senha "12345ebac"
            Então deve exibir uma mensagem de alerta "usuário ou senha inválidos"

            Esquema do Cenário: Autenticar multiplos usuários
            Quando eu digitar <usuario>
            E a <senha>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | usuario                | senha       | mensagem              |
            | "leonardo@ebac.com.br" | "ebac12345" | "pedidos do carrinho" |
            | "leandro@ebac.com.br"  | "ebac12345" | "pedidos do carrinho" |
            | "jota@ebac.com.br"     | "ebac12345" | "pedidos do carrinho" |


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
            E preencher campo de email "llljjj@ebca.com.br"
            Então deve exibir uma mensagem de alerta "email inválido"

            Cenário: Campos obrigatórios não preenchidos
            Quando campos obrigatórios não forem todos preenchidos "Nome, sobrenome, País, endereço, cidade, CEP, Telefone"
            E preencher campo de email, com um email válido "leonardo@ebac.com.br"
            Então deve exibir uma mensagem de alerta "campos obrigatórios não preenchidos"

            Esquema do Cenário: Cadastrar multiplos clientes
            Quando eu preencher todos os campos <obrigatorios>
            E o email ser <valido>
            Então deve exibir a <mensagem> de sucesso

            Exemplos:
            | obrigatorios | valido                 | mensagem                         |
            | "Nome"       | "leonardo@ebac.com.br" | "Cadastro concluido com sucesso" |
            | "Sobrenome"  | "leandro@ebac.com.br"  | "Cadastro concluido com sucesso" |
            | "CEP"        | "jota@ebac.com.br"     | "Cadastro concluido com sucesso" |







