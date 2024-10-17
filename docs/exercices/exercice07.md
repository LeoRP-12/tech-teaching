Nesta tarefa, vamos praticar o uso do comando repetitivo for e do método range() produzindo figuras geométricas simples com caracteres ASCII. Os desenhos irão variar de acordo com os polígonos escolhidos, os caracteres especificados e as dimensões indicadas. Leia as descrições e observe os exemplos abaixo.

Quadrado: Deve-se desenhar um quadrado a partir da medida, em número de caracteres, do lado deste objeto.

Triângulo: Deve-se desenhar um triângulo isósceles a partir da medida, em número de caracteres, da altura deste objeto. A primeira linha deve conter 1 caractere, a segunda 3 e assim por diante até que o valor altura * 2 - 1 seja atingido. O primeiro caractere deve estar centralizado com relação à base do triângulo.


Losango: Deve-se desenhar um losango a partir da medida, em número de caracteres, do lado deste objeto. Note que a altura e a largura terão valor igual a 2 * lado - 1.



Hexágono: Deve-se desenhar um hexágono a partir da medida, em número de caracteres, do lado deste objeto. Note que a altura terá valor igual a 2 * lado - 1 e a largura será 3 * lado - 2


Octógono: Deve-se desenhar um octógono a partir da medida, em número de caracteres, do lado deste objeto. Note que a altura e a largura terão valor igual a 3 * lado - 2.


entrada

Para todos os objetos serão indicados:

 <tipo_do_objeto>
<caractere>
<dimensao>       
Os identificadores dos tipos dos objetos serão as seguintes:

Q: Quadrado
T: Triângulo
L: Losango
H: Hexágono
O: Octógono
Como explicado acima, para o triângulo a dimensão fornecida será a altura e para os demais polígonos a dimenão fornecida será a medida do lado. Exemplo:

H
*
4


saída

A saída deverá conter o desenho solicitado, de acordo com os exemplos da primeira seção desta página. Adicionalmente, deverá ser feita uma validação dos valores da entrada. Caso a primeira linha não contenha o identificador de um dos objetos descritos acima deverá ser emitida a mensagem:

Identificador invalido.

O valor indicado para as dimensões dos objetos deverá ser um número maior ou igual a 3. Caso a dimensão fornecida não siga esta restrição deverá ser emitida a mensagem:

Dimensao invalida.

Caso haja mais de um erro na entrada, apenas a primeira mensagem deverá ser emitida. Ou seja, em caso de identificador inválido, não é necessário verificar o valor da dimensão.

Para a entrada descrita acima a saída será:

   ****
  ******
 ********
**********
 ********
  ******
   ****