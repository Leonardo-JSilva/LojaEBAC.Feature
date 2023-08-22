            #Language: pt

            Funcionalidade: tela de carrinho
            Como cliente da loja EBAC
            Quero configurar meu produto de acordo com tamanho e gosto
            Para depois inserir no carrinho

            Contexto:
            Dado seleções de cor, tamanho e quantidade devem ser obrigatórios

            Cenário: Produto válido
            Quando eu selecionar o "produto", "quantidade" e "tamanho"
            E clicar no botão adicinar ao carrinho
            Então deve exibir uma opção "produto adicionado com sucesso"

            Cenário: Produto inválido
            Quando eu selecionar o "produto" e "tamanho"
            E clicar no botão adicionar ao carrinho
            Então deve exibir uma mensagem de alerta "produto inválido, selicione a quantidade"

            Esquema do Cenário: Remover produtos do carrinho
            Quando eu selecionar o <produto>
            E cliquar em <limpar>
            Então deve exibir uma <mensagem> de sucesso

            Exemplos:
            | produtos | limpar   | mensagem           |
            | "camisa" | "limpar" | "produto removido" |
            | "blusa"  | "limpar" | "produto removido" |
            | "tenis"  | "limapr" | "produto removido" |