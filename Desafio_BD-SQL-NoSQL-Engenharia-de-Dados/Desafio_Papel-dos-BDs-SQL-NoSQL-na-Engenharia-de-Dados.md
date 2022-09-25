# **Desafio**

Neste desafio, você terá a missão de compreender o papel dos Bancos de Dados Relacionais (SQL) e Não Relacionais (NoSQL) no contexto de um Engenheiro de Dados. Para isso, anote todos os conceitos, definições e insights que julgar relevantes em um novo repositório Git, aumentando assim seu portfolio de conhecimentos.



# Engenharia de Dados

A Engenharia de Dados mudou a forma como vemos e entendemos a informação. Com a Internet e o avanço da tecnologia, cada vez mais pessoas tem acesso à informação, pesquisas e o volume de dados criados a cada segundo aumentou em ordens de grandeza em relação ao que tínhamos no final do século XX. Com toda esta mudança, fez-se necessário ver os dados como uma fonte melhor de informação, de onde se tira informação e onde é possível transformar esta informação em conhecimento.

Engenheiros de dados pegam então esses dados que podem estar dispostos em Data Lakes ("Lagos de Dados") para analisar e extrair informação relevante para empresas, instituições financeiras, médicas, estatísticas, entre outros. Para isso foi necessário que os bancos de dados fossem criados e depois adaptados para este novo mundo que precisava que a análise de informação e sua persistência fosse repensada, ou mesmo, recriada em algumas instâncias e áreas.



# Conceitos e Definições

O **SQL**, ou **Structure Query Language** é uma linguagem estruturada para efetuar pesquisas e inclusões se informações em bancos de dados. Criado com base na álgebra relacional, é baseado no sistema entidade relacionamento, composto por: entidades, atributos e relacionamentos.

Com o modelo relacional e o SQL é possível criar bancos de dados estruturados com um mindset similar ao da Programação Orientada a Objetos, onde conceitos de objetos e serviços do mundo real podem ser desenhados com precisão para que todas as informações sobre um produto/serviço possam ser refletidos de acordo com o uso.



O **NoSQL** **(Not Only Structure Query Language)**, ao contrário do que se imagina, não quer dizer que é oposto ao SQL, mas sim que é "não apenas" ("Not only") SQL, ou seja, tem as vantagens do SQL com o adendo de propiciar utilizar outros tipos de dados, como acontece com redes sociais como o Facebook ou Tumblr, por exemplo, cujo conteúdo vai além de documentos, abrangendo vídeos, imagens, gifs, entre outros.

Além do uso relacionado, também é muito utilizado em Análise de Dados e Ciência de Dados, por permitir uma performance melhor em se tratando de busca e correlação entre diferentes tipos de informações, como o Neo4J que é um NSQL baseado em grafos, onde podemos ver os relacionamentos entre informações mostrados em grafos e nós que lembram sinapses cerebrais.



# Insights

Ao escolher uma base de dados moderna, uma das decisões mais importantes é escolher entre as linguagens SQL ou NoSQL para estruturação dos dados, pois ambas oferecem opções interessantes para os diferentes tipos de empresas e estruturas.
Alguns dos pontos mais nevrálgicos relacionados a essa escolha são as diferenças entre cada um dos 2 tipos e algumas dessas diferenças proeminentes são:

1. SQL são relacionais, já as NoSQL são não-relacionais;
2. As SQL tem tem esquema (schemas) pré-definidos e as NoSQL têm esquemas dinâmicos para dados não estruturados. Estes são melhores para dados de diferentes tipos ou que sobre os quais ainda se tem a intenção de extrair informações;
3. SQL tem escala vertical, enquanto que as NoSQL tem escala horizontal - o que faz diferença na performance;
4. SQL são baseadas em tabelas, já as NoSQL são baseadas em documento, chave-valor, grafos our colunas para seu armazenamento;
5. SQL são melgores para transações multi-tuplas (linhas), enquanto que as NoSQL são melhores para dados não estruturados ou documentos em formato JSON.

Como é possível ver, cada um dos dois tipos de linguagens tem uma utilização específica. Para empresas como a Netflix ou o Twitter, o NoSQL é imensamente mais adaptável e veloz para os diferentes tipos de conteúdos que transitam em suas plataformas, o que não quer dizer que não se possa utilizar SQL nessas empresas.

Na verdade, há todo um movimento de bases de dados poliglotas, ou seja, que aceitam mais de um tipo de linguagem, afinal, ter flexibilidade, alta performance e precisão é muito mais premente do que se forçar a adotar apenas uma metodologia ou recurso, principalmente com a heterogeneidade que compõe Data Lakes, Data Pools, Big Data, entre outras denominações de amontoados de dados gerados diariamente ao redor do mundo.

