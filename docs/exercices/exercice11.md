Você certamente já recebeu recomendação de novos amigos em redes sociais. A implementação desta funcionalidade muitas vezes estará baseada na suposição de que se dois usuários têm um ou mais amigos em comum em alguma rede, eles provavelmente também se conhecem pessoalmente ou via outras plataformas.

Nesta tarefa, iremos usar dicionários e os outros conceitos aprendidos na disciplina para, a partir de uma lista de usuários e amizades, calcularmos os amigos em comum para todos os pares de usuários na rede.


entrada

A primeira parte da entrada conterá os nomes dos usuários, com um nome por linha. Esta lista será encerrada pelos caracteres --.

Gabriel
Beatriz
Guilherme
--
A segunda parte da entrada conterá pares de nomes que indicarão as relações de amizade. Note que um par <usuarioa> <usuariob> indica que <usuarioa> é amigo de <usuariob> e que <usuariob> é amigo de <usuarioa>, não sendo necessário registrar a amizade duas vezes. A lista de pares também será encerrada pelos caracteres --.

Gabriel Beatriz
Beatriz Guilherme
--
Você pode supor que não haverá repetição nos nomes na primeira parte da entrada e nem nas amizades. Além disso, todos os nomes que aparecem nas amizades foram apresentados na lista de usuários.

Apesar de a saída ter regras bem definidas de ordenação, os nomes dos usuários e as amizades na entrada não se encontram ordenados.


saída

Para cada par de usuários na rede será apresentada a lista de amigos em comum entre eles no seguinte formato:

<usuarioa1> <usuariob1> : <amigo1>, <amigo2>, ..., <amigon>
Os pares serão listados em ordem alfabética de <usuarioai>. Além disso, para todo par <usuarioai> <usuariobi>, <usuarioai> deve preceder <usuariobi> na ordem alfabética. Finalmente, a lista de amigos em comum também deve estar em ordem alfabética.

Para o exemplo da seção anterior, a saída será:

Beatriz Gabriel :
Beatriz Guilherme :
Gabriel Guilherme : Beatriz
Note que quando a lista de amigos em comum for vazia a linha a ser impressa deve terminar pelo sinal :, sem espaços em branco extras.

Beatriz Gabriel :
Beatriz Guilherme :
Gabriel Guilherme : Beatriz