# Exercício 00

O objetivo deste exercício é propiciar a familiarização com o interpretador Python Teste as opções corretas e todos os erros documentados. Esta experiência poderá facilitar muito o seu processo de desenvolvimento e depuração das próximas tarefas.



Veja o código abaixo:

 print("Oi, mundo!")


## Testes com o terminal

Abra um terminal e o programa python3:

```bash
    $ python3
    Python 3.7.1 
    Type "help", "copyright", "credits" or "license" for more information.
    >>>
```  
A partir deste ponto, você pode testar comandos em Python de forma interativa. Vamos lá!
```bash
    >>> print("Oi, mundo!")
    Oi, mundo!
```
Muitas vezes não escrevemos exatamente como o interpretador esperava. São erros de sintaxe ou de definição de nomes. Veja os exemplos abaixo:
#### Falta de parênteses
```bash
    >>> print "Oi, mundo!"
    File "", line 1
        print "Oi, mundo!"
                        ^
    SyntaxError: Missing parentheses in call to 'print'. Did you mean print("Oi, mundo!")? 
```
Neste caso, o interpretador teve facilidade para identificar nosso erro e nos apresentou uma mensagem bem amigável, nos direcionando para a solução.

#### Função com nome inválido

Outro erro comum é não digitarmos corretamente o nome de uma função.

```bash
    >>> prit ("Oi, mundo!")
    Traceback (most recent call last):
    File "", line 1, in 
    NameError: name 'prit' is not defined
    >>> 
```

Às vezes o nome está correto, mas o interpretador precisa de ajuda para encontrar a função.

#### String sem delimitador final

Às vezes, a mensagem pode ser um pouco mais difícil de entender. Abaixo, o interpretador está indicando que a linha acabou (EOL = end of line) enquanto tentava processar a string.

```bash
    >>> print("Oi, mundo!)
    File "", line 1
        print("Oi, mundo!)
                        ^
    SyntaxError: EOL while scanning string literal
```
#### String sem delimitador inicial

Um erro semelhante leva a uma mensagem bem diferente. Neste caso, como não havia aspas demarcando o início da string, o interpretador tentou avaliar o seu conteúdo como código Python e indicou que a sintaxe está inválida.

```bash
    >>> print(Oi, mundo!")
    File "", line 1
        print(Oi, mundo!")
                        ^
    SyntaxError: invalid syntax
```

## Testes com arquivos

Outra forma de usar a linguagem Python é criarmos um arquivo com o programa para execução posterior. Abra um editor de textos como o bloco de notas e crie um arquivo chamado lab00.py com o conteúdo abaixo:

```txt
print("Oi, mundo!")
```
e depois execute da seguinte forma:

```bash

$ python3 lab00.py
Oi, mundo!  
```

Altere o arquivo introduzindo erros de sintaxe semelhantes aos anteriores e observe as mensagens retornadas.