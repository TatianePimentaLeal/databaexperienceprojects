# **Descrição do Desafio** - DIO:minidisc:

"Agora você irá criar um esquema conceitual do zero. A partir da narrativa fornecida você será capaz de criar todas as entidades, relacionamentos e atributos. Caso encontre algo que não foi definido na narrativa, utilize a sua compreensão do contexto e deixe uma descrição no README do seu github. para verificação."

### **Objetivo:**

Cria o esquema conceitual para o contexto de oficina com base na narrativa fornecida

### **Narrativa:**

- Sistema de controle e gerenciamento de execução de ordens de serviço em uma oficina mecânica
- Clientes levam veículos à oficina mecânica para serem consertados ou para passarem por revisões periódicas
- Cada veículo é designado a uma equipe de mecânicos que identifica os serviços a serem executados e preenche uma OS com data de entrega.
- A partir da OS, calcula-se o valor de cada serviço, consultando-se uma tabela de referência de mão-de-obra
- O valor de cada peça também irá compor a OSO cliente autoriza a execução dos serviços
- A mesma equipe avalia e executa os serviços
- Os mecânicos possuem código, nome, endereço e especialidade
- Cada OS possui: n°, data de emissão, um valor, status e uma data para conclusão dos trabalhos.



**<u>INFORMAÇÕES DA AUTORA</u>**:clipboard:

De acordo com as orientações acima, foi criado o esquema deste repositório.

Foram acrescentadas informações de pagamento dentro da OS, para que conste a forma de pagamento e também se a mesma foi realizada, para conferências futuras.

Os relacionamentos foram incluídos conforme instrução, e, ao analisar a avaliação do time de mecânicos, vi que a execução em si, seria melhor retratada como entidade com ligação N:M para com a ordem de serviço, do que como o relacionamento da avaliação, pois compreendia a execução e esta poderia ser apenas do serviço ou do serviço + peças.



:e-mail: tatianepimentaleal@gmail.com