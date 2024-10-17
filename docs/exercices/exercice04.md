Classificador de Triângulos

Nesta tarefa, vamos utilizar os conhecimentos adquiridos sobre comandos condicionais para classificar triângulos de acordo com as medidas de seus lados e ângulos internos. Veja a tabela a seguir:


Considere que A é a medida do maior lado do triângulo e B e C são as outras medidas. Um teste simples para classificar o triângulo de acordo com as medidas do ângulos internos é a seguinte:

Triângulo acutângulo: A² < B² + C²
Triângulo retângulo: A² = B² + C²
Triângulo obtusângulo: A² > B² + C²
Você deverá implementar um programa em Python que leia três valores reais representando as medidas dos lados de um triângulo supondo alguma unidade e classifique-o emitindo adequadamente mensagens do conjunto abaixo:

Triangulo equilatero
Triangulo isosceles
Triangulo escaleno
Triangulo acutangulo
Triangulo retangulo
Triangulo obtusangulo
Valores invalidos na entrada
Apesar de todo triângulo equilátero ser também isósceles apenas a mensagem indicando que o triângulo é equilátero deverá ser emitida quando os três lados apresentarem a mesma medida.

Não faremos classificação de triângulos degenerados, ou seja, triângulos em que uma das medidas é igual à soma das outras duas.

A mensagem sobre a ocorrência de valores inválidos na entrada deve ser emitida caso um zero ou um valor negativo seja lido e também nos casos em que uma das medidas é maior ou igual à soma das outras duas.