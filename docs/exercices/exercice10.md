Nesta tarefa, exercitaremos o uso estruturas multidimencionais em Python. O tema será o autômato celular Jogo da Vida proposto por John Horton Conway em 1970. John foi um matemático inglês com contribuições em áreas como teoria dos grupos finitos, teoria dos nós, teoria dos números, teoria combinatória dos jogos e teoria de códigos e que ficou mundialmente conhecido pelo autômato celular que estudaremos nesta tarefa. Ele faleceu em abril de 2020, aos 82 anos, vítima da COVID-19.

O jogo, que na verdade não tem jogadores, opera sobre um tabuleiro com células vivas e células mortas. Utilizaremos um padrão ASCII-ART em que células vivas são representadas por caracteres @ e células mortas por espaços em branco. Uma moldura com caratecteres + e - será utilizada para facilitar a visualização da delimitação dos diagramas.

+-----+
|     |
|  @  |
| @ @ |
|     |
+-----+
Na definição original, o diagrama é infinito e toda célula tem 8 vizinhos como esquematizado abaixo:

 V8  V1 V2
   \ | /
V7 - @ - V3
   / | \
 V6  V5 V4 
No nosso caso, para simplificar, consideraremos que as células adjacentes à moldura estão sempre mortas. Os estados das outras células poderão ser modificadas a partir da seguintes regras:

Sobrevivência: toda célula viva com dois ou três vizinhos sobrevive para a próxima geração.

Morte: toda célula com quatro ou mais vizinhos irá morrer por superpopulação; toda célula com menos de dois vizinhos irá morrer por isolamento.

Nascimento: uma célula morta com exatamente três vizinhos irá (re)nascer.

Todas as mortes e todos os nascimentos são calculados simultaneamente, dando origem a uma sequência de quadros, como ilustrado abaixo.

+-----------------+ +-----------------+ +-----------------+ +-----------------+ 
|                 | |                 | |                 | |                 |
|     @     @     | |                 | |                 | |     @     @     |
|     @     @     | |    @@     @@    | |    @@@   @@@    | |     @     @     |
|     @@   @@     | |     @@   @@     | |                 | |     @@   @@     |
|                 | |  @  @ @ @ @  @  | |  @    @ @    @  | |                 |
| @@@  @@ @@  @@@ | |  @@@ @@ @@ @@@  | |  @    @ @    @  | | @@@  @@ @@  @@@ |
|   @ @ @ @ @ @   | |   @ @ @ @ @ @   | |  @    @ @    @  | |   @ @ @ @ @ @   |
|     @@   @@     | |    @@@   @@@    | |    @@@   @@@    | |     @@   @@     |
|                 | |                 | |                 | |                 |
|     @@   @@     | |    @@@   @@@    | |    @@@   @@@    | |     @@   @@     |
|   @ @ @ @ @ @   | |   @ @ @ @ @ @   | |  @    @ @    @  | |   @ @ @ @ @ @   |
| @@@  @@ @@  @@@ | |  @@@ @@ @@ @@@  | |  @    @ @    @  | | @@@  @@ @@  @@@ |
|                 | |  @  @ @ @ @  @  | |  @    @ @    @  | |                 |
|     @@   @@     | |     @@   @@     | |                 | |     @@   @@     |
|     @     @     | |    @@     @@    | |    @@@   @@@    | |     @     @     |
|     @     @     | |                 | |                 | |     @     @     |
|                 | |                 | |                 | |                 |
+-----------------+ +-----------------+ +-----------------+ +-----------------+


entrada

As primeiras linhas da entrada conterão um diagrama inicial para o jogo da vida no formato utilizado nos exemplos anteriores. A última linha conterá o número de passos a serem processados na sequência, ou seja, o número de quadros além do quadro original que você deverá apresentar na saída.

+------+
|      |
|      |
|  @@@ |
| @@@  |
|      |
|      |
+------+
1


saída 

A saída conterá uma repetição do diagrama inicial seguida do(s) quadro(s) solicitado(s). Para o exemplo acima, a saída será:

+------+
|      |
|      |
|  @@@ |
| @@@  |
|      |
|      |
+------+
+------+
|      |
|   @  |
| @  @ |
| @  @ |
|  @   |
|      |
+------+