FLOdactic
=========

A system for managing Free Libre Open didactic material made in Squeak Smalltalk from the POO2013 postgraduate course at IME/USP.

Original proposal from Professor Fábio:

* Módulo 1: gestão de conteúdo (Fase 1 da turma da pós)
* Módulo 2: gestão de cursos (Fase 1 da turma da graduação)

## Usuários
### admin - super-poderes
* criar tópicos
* definir moderadores para tópicos

### Moderador
* aprova ou não conteúdo

### Comum
* inserir informações
* consultar
* avalia conteúdo

##Cursos

### Disciplinas
* Docente responsável
* Aulas
* Turmas
 * Instrutor

## MaterialDidatico
* Tipo (vídeo, áudio, slides, texto, programa, exercícios, código)
* Título
* Descrição
* Resumo (opcional)
* Autor(es)
* Referência => URL
* Classificação
 * Tópico
 * tags
* Ano/data de criação
* Ano/data de última atualização
* Ficha Catalográfica
* Licença (campo obrigatório) Sugestão: CreativeCommons
* UsuárioDono

## Política de Permissões
* admin - pode fazer tudo
* comum - pode fazer tudo apenas com o conteúdo que ele mesmo criou
* comum - pode delegar para outro usuário qualquer os seus poderes sobre um objeto específico

FLOdactic setup
===============

1.- Execute this on the workspace to install filetree gem (Seaside/Squeak):
```Smalltalk
Installer ss3
    project: 'FileTree';
    install: 'ConfigurationOfFileTree'.
((Smalltalk at: #ConfigurationOfFileTree) project version: #'stable') load.
```

2.- Clone the github project and link it to a local Monticello package:
```Bash
git clone https://github.com/poo2013pos/FLOdactic.git
```
Then using the MonticelloBrowser Create a FLOdactic package and a filetree repository by selecting the FLOdactic folder that contains your cloned git repository

3.- Reload the package on the local Seaside/Squeak:
* With the MonticelloBrowser
 * Create a package called FLOdactic
 * Click +Repository
* With the Repository:filetree:///<path-to-FLOdactic>
 * Select the FLOdactic folder
 * Click Open
 * For every package on the left pane: Click it
  * Click on the latest version on the right pane (it should be on bold letters)
  * Click Load

4.- A sample workspace is available for testing on the FLOdactic-Tests package

## Travis CI Status (in [painfull] progress)
**squeak4.3 & squeak4.4** : [![Build Status](https://travis-ci.org/poo2013pos/FLOdactic.png)](https://travis-ci.org/poo2013pos/FLOdactic)
