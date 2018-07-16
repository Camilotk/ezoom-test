# MEU CRUD
Para meu CRUD decidi fazer um  Sistema de Cursos de Inovação baseado no case da Perestroika do Thiago Mattos. Para preservar e respeitar a identidade da marca optei por renomear o Projeto de Glasnost. O objetivo será criar algumas funções básicas de uma escola online que possui alguns cursos de inovação no mesmo modelo empresarial. Como pode ser observado no modelo ER do BD originalmente foi modelado um sistema mais complexo, mas devido ao tempo (9~10 horas) de execução o projeto foi simplificado
<br>
É um CRUD em que é possivel que os usuários criem uma conta e loguem, dentro da sessão são habilitados a ver todos os cursos cadastrados, alterá-los ou deletá-los. Também há a possibilidade de cadastrar novos cursos e professores. Professores e Cursos são tabelas relacionadas, assim como Endereço e Estudante(usuário)/Professor, além de Endereço, Estado e Cidade terem relação. Tudo é feito com a conexão ao BD utilizando a Query Builder do CI.

# OUTROS TRABALHOS EM PHP DESENVOLVIDOS JUNTO COM O TESTE
Então! Antes deste teste eu não sabia absolutamente nada de PHP, precisei aprender fazendo. Mas como não gosto de atirar no escuro fiz dois tutoriais de 12H cada de introdução básica à linguagem e ao framework que estão [neste](https://github.com/Camilotk/primeiro_php) e [neste](https://github.com/Camilotk/codeigniter_estudo) repositório. Ambos também são CRUD's, porém fiz seguindo tutoriais e por tanto são objetos de estudo e não código pessoal.

# PREVIEW
Talvez seja interessante baixar através do GIT CLONE ou da função de compreensão e rodar no localhost. Aparentemente os base_url não atualizam as rotas após hospedar e mantem os caminhos locais.

# VERSÕES
 - PHP 7.2
 - CI 3.1
 - MySQL 5.7 
 - Bootstrap CDN