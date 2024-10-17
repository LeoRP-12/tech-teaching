Em textos disponíveis na Internet é muito comum o uso de hashtags e emoticons. Um pesquisador da área de linguística está interessado em medir o quanto o uso destes elementos é importante para a interpretação destes textos. Para isso ele irá entregar os textos originais para um grupo de leitores e os mesmos textos sem emoticons e hashtags para outro grupo. Finalmente, ele irá comparar as impressões dos grupos sobre os textos.

Sua tarefa será escrever a versão inicial de um programa em Python para auxiliar o pesquisador a filtrar os textos. Adotaremos as seguintes regras simplificadas para a classificação dos elementos:

Palavra: sequência de letras (sem acento).
Exemplos: UNICAMP algoritmos programacao

Número: sequência de dígitos precedidos ou não do sinal negativo (-). Identificaremos números inteiros, não tratando números racionais, reais, complexos ou com pontos indicando a separação em grupos de três dígitos.
Exemplos: 2020 -100000

Hashtag: caractere # seguido de letras.
Exemplos: #python #unicamp #amoviajar

Emoticon: sequência de um ou mais caracteres que não se enquadra nas descrições anteriores. Emoticons são compostos principalmente por caracteres de pontuação, mas podem conter letras, números ou serem precedidos por #.
Exemplos: :-) #:-) :D <3


entrada


Nesta versão inicial, a entrada virá pré-processada em uma linha contendo uma sequência de elementos separados por espaços em branco. Veja o exemplo abaixo:

#ilovepython <3 amo programar :-)


saída

A saída conterá listas dos elementos classificados, respeitando a ordem da entrada. Para a entrada usada como exemplo a saída será:

Palavra(s): amo programar
Numero(s):
Hashtag(s): #ilovepython
Emoticon(s): <3 :-)

Nenhum espaço em branco deve ser escrito ao final das listas, caso contrário o SuSy acusará um erro na comparação entre o resultado do seu programa e a saída esperada. Observe abaixo quais são os caracteres que devem ser escritos para o exemplo utilizado anteriormente:
Palavra(s): amo programar
Numero(s):
Hashtag(s): #ilovepython
Emoticon(s): <3 :-)