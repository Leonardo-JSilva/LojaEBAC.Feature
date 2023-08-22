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
            E a senha "asdwadsdaw"
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

         