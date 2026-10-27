---
title: "Django Problemas Com Runserver"
date: 2015-01-13T20:00:00+01:00
author: "Henrique Leal"
---

Olá pessoal! Como todos que acompanham o blog sabem que atualmente tenho
trabalhado muito forte com python e django. Recentemente no meu fluxo de
trabalho aconteceu um pequeno problema com o runserver do django.

Para rodar um projeto utilizando o django precisamos do seguinte comando:

```bash
$ python manage.py runserver
```

Acontece que parando o servidor utilizando as teclas ```CTRL + C``` as vezes a
linha do terminal retorna ao normal mas o servidor continua rodando, não me
perguntem o por que. Para resolver o problema é necessário achar o processo
através do seguinte comando:

```bash
$ ps aux | grep -i manage.py
```

### Entendo o comando PS

O comando ps lista os processos em execução no sistema. Porém, diferentemente
do top ele não traz informações sobre o quanto de processamento ou de memória
ele está consumindo. Apesar disso o, o ps é uma maneira mais rápida para
consultar o PID de um processo e encerrá-lo.

Para maiores informações sobre as opções usadas basta consultar a man page do
comando.

```bash
$ man ps
```

Como saída do programa você vai ter algo similar a isso:

```bash
henrique  3638  2.8  0.7 168008 47400 pts/3    S+   19:15   0:00 python ./manage.py runserver
```

Então você precisar selecionar o segundo número da esquerda para direita e
matar o processo:

```bash
kill -9 3638
```

Bom pessoal essa foi a solução que eu encontrei para esse problema caso alguem
tenha alguma contribuição ou crítica só prender o grito ;)