# SEL0456

Assuntos tratados na disciplina:
- Ferramentas
  - git, github, gitlab
  - cmake
  - IDE - Emacs (spacemacs), VS Code, PyCharm, Spyder, Jupyter, etc.
  - GDB
- Linguagens abordadas:
  - C
  - Python
  - Emacs Lisp
- Conceitos:
  - Programação Orientada a Objetos
  - Programação Funcional
  - Programação Imperativa
- Construção de Aplicativos com Interface Gráfica utilizando GTK

## Aula 01 (Teórica)
- Conceitos:
  - Licenças de _Software_
    - _Opensource_
    - _Software_ livre (FOSS)
    - _Shareware_
    - _Freeware_
    - _Software_ proprietário
  - Sistema Operacional, Kernel, Libc, Shell

## Aula 02 (Prática)
- Instalação de Sistema Operacional (SO) Baseado em Linux: **Debian GNU/Linux 11 Codename bullseye**
  - [Tutorial](aula-02/README.md)
- Partições de HD

## Aula 03 (Teórica)
- Conceitos:
  - `make`, `gcc`
  - código de retorno de processo (`return` ou `exit`)
  - variáveis locais, criadas na pilha, e variáveis globais
  - Formato ELF, seções:
    - .data
    - .text
    - .bss
    - HEAP
    - Stack
  - GDB
  - Estrutura de programas em C  ([exemplo](aula-03/exemplo-asm.c))
    - Arquivos de código fonte (.c)
	- Arquivos objeto (.o)
	- Arquivos de cabeçalho (.h)
  - Compilador GCC e suas flags
  - Makefile ([exemplo](aula-03/Makefile)):
    - Para criação e utilização do makefile no VS Code é necessário instalar uma extensão chamada Makefile Tools.
    - Para instalar abra o Quick Open (Ctrl + P) e cole o seguinte comando:
    `ext install ms-vscode.makefile-tools`

## Aula 04 (Prática)
- Instalação e configuração de SO e ambiente de desenvolvimento integrado (IDE)
  - IDE: Emacs com Spacemacs
    - Para instalar Emacs: rodar no terminal
    ```bash
    sudo apt update
    sudo apt install emacs
    ```
    - Para instalar Spacemacs: rodar no terminal
    ```bash
    cd ~
    git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d
    ```
    - Usar arquivo de configuração `.spacemacs` presente na pasta [emacs](emacs/.spacemacs)
      - Salve o arquivo .spacemacs na sua pasta de usuário
    - Para usar modo `C/C++`, instalar pacote `ccls`:
    ```bash
    sudo apt update
    sudo apt install ccls
    ```

## Aula 05 (Teórica)
- Conceitos:
  - Controle de versões
  - `rcs`, `svn`, `git`
    - Plataformas de hospedagem com controle de versões usando Git: [GitHub](https://github.com/), [GitLab](https://about.gitlab.com/)
  - [Tabela com comandos Git e atalhos de teclado equivalentes no Emacs](aula-05/README.md)
  - [Exemplo com código para calcular fatorial de n](fact/)

## Aula 06 (Prática)
### Atividade para entrega
Cálculo do termo _n_ da sequência de Fibonacci

- Linguagem utilizada: `C`
- Tarefas:
  - Inicialmente, implementar utilizando laços de controle de fluxo (ex: `for`)
  - Posteriormente, implementar utilizando funções recursivas
  - A transição entre versões deve ser feita usando recursos de controle de versões (ex: `commit`, `branch`, etc)
- Serão avaliadas as competências do aluno ao usar ferramenta `git` e plataforma de hospedagem com controle de versões

## Aula 07 (Teórica)
- Conceitos:
  - Programação imperativa $\neq$ Programação funcional
  - Programação estruturada (`(do) while`, `for`) $\neq$ Programação não-estruturada (`goto`)
  - Programação orientada a objetos (OOP) $\neq$ Programação não-orientada a objetos
  - OOP
    - Objetos
    - Classes
    - Herança
    - Polimorfismo
  - Vantagens: Encapsulamento, modularidade, manutenção, legibilidade
  - Linguagens para OOP: C++, Rust, Python
    - [Exemplo em Python](oop-python/range.py)

## Aula 08 (Prática)
- Continuação do trabalho de cálculo do número _n_ da sequência de Fibonacci

## Aula 09 (Teórica)

### Tutorial Git/GitHub
- Criar um repositório na nuvem
  - Your repositories -> New
    - Inserir nome do repositório
    - Escolher entre público e privado
    - Adicionar README.md, licença e `.gitignore`
  - Create
- Clonar repositório
  - Usar `ssh` para editar e enviar o código de volta ao repositório remoto
    - Para usar o `ssh`, tem que criar uma chave criptográfica assimétrica e carregá-la na sua área do GitHub:
    ```bash
    ssh-keygen -t ed25519 -C emaildelogin
    ```
    - Duas chaves são criadas no diretório `~/.ssh`: `id_ed25519` (chave privada) e `id_ed25519.pub` (chave pública)
    - Usar a chave pública no GitHub:
      - Settings -> SSH and GPG keys -> New SSH key
        - Inserir nome de identificação da chave
        - Em Key, colocar conteúdo do arquivo `id_ed25519.pub`: `ssh-ed5........emaildelogin`
  - Caso não precise, pode-se usar `https`
- Criar e editar localmente os arquivos
- Adicionar arquivos ao controle de versões (`add`), "tirar foto" (`commit`) e enviar para remoto (`push`)

## Aula 10 (Prática)
- Conclusão do trabalho de cálculo do número _n_ da sequência de Fibonacci

## Aula 11 (Teórica)

### Como aprender programação?
| Aprendizado orientado a tarefas | Aprendizado orientado a componentes |
|---------------------------------|-------------------------------------|
| Tutoriais                       | Tipos de dados e operadores         |
| Exemplos                        | Controle de fluxo                   |
|                                 | Definição de funções                |
|                                 | Definição de novos tipos            |
|                                 | Biblioteca padrão                   |

### Python sob a perspectiva do aprendizado orientado a componentes
- Tipos de dados:
  - Numéricos: `int`, `float`, `complex`
  - Texto: `str`
  - Booleanos: `bool`
  - Outros tipos: Sequência, Mapeamento, Binário
    - [Mais tipos e detalhes](https://www.w3schools.com/python/python_datatypes.asp)

- Tipos de operadores:
  - Matemáticos: `+`, `-`, `*`, `/`, `**`, `<<`, etc
  - Booleanos: `or`, `and`, `xor`, `not`, etc

- Controle de fluxo:
  - Condicional:
    ```python
    if bool1:
        statements
    elif bool2:
        statements
    else
        statements
    ```
  - Laços de repetição:
    ```python
    for var in range(n):
        statements
    ```
    ```python
    while bool1:
        statements
    ```
  - Teste de trecho de código:
    ```python
    try:
        test code
    except typeerror:
        statements
    ```
  - Abertura de arquivos de texto
    ```python
    with open('file.txt','r') as f:
        handle data in f
    ```

## Aula 12 (Prática)

### Configuração de ambiente de desenvolvimento integrado (IDE) para `python`
  - IDE: Emacs com Spacemacs
    - Para instalar interpretador interativo `ipython`: rodar no terminal
    ```bash
    sudo apt update
    sudo apt install python3-pip ipython3
    sudo update-alternatives --install /usr/bin/ipython ipython /usr/bin/ipython3 1
    ```
    - Para instalar dependências para habilitar recursos de python no Emacs: rodar no terminal
    ```bash
    pip install jedi json-rpc service_factory flake8 autoflake
    ```
    - Usar arquivo .spacemacs da pasta [emacs](/emacs/.spacemacs)
    - Comandos no Emacs após editar um programa em `python`:
      - `C-c C-p`: inicia o interpretador `python`
      - `C-c C-c`: roda o programa
      - `C-c C-r`: roda o que está selecionado

### Python sob a perspectiva do aprendizado orientado a componentes (continuação)
- Definição de funções:
  - Conferir [exemplo](oop-python/teste.py)


## Aula 13 (Teórica)

### Python sob a perspectiva do aprendizado orientado a componentes (continuação)
- Definição de novos tipos: `class nome:`
  - Conferir [exemplo](oop-python/range.py)
    - Declarar variáveis locais ao início
  - Exemplos de redefinição de operadores para classes:
    - Redefinir `r+n`: `def __add__(self,v)`
    - Redefinir `r+=n`: `def __iadd__(self,v)`
- _Regular Expressions_ (Regex)
  - Usar pacote `re`:
  ```python
  import re
  re.search('regex_pattern',string)
  ```
    - Exemplos de padrão:
      - `'^a'` começa com letra `a`
      - `'^[0-9]'` começa com número
      - `'n'` contém letra `n`

## Aula 14 (Prática)

### Módulos Python para seminário

<!---
1. datetime 2
2. scypy + numpy 3
3. matplotlib 2
4. pandas 3
5. postgres + mariadb + mysql 3
6. control 3
7. pil 2
8. opencv 3
9. simpy 3
10. Flask 3
11. GTK
-->

| Grupo | Módulo                       | Integrantes | Data do seminário |
|-------|------------------------------|-------------|-------------------|
| 1     | `datetime`                   | 2           | 01/11             |
| 2     | `scipy` + `numpy`            | 3           | 01/11             |
| 3     | `matplotlib`                 | 2           | 08/11             |
| 4     | `pandas`                     | 3           | 08/11             |
| 5     | `postgres`+`mariadb`+`mysql` | 3           | 22/11             |
| 6     | `control`                    | 3           | 22/11             |
| 7     | `pil`                        | 2           | 29/11             |
| 8     | `opencv`                     | 3           | 29/11             |
| 9     | `simply`                     | 3           | 06/12             |

> Os grupos que são formados por 2 integrantes tem que fazer a apresentação em no mínimo 20 minutos e no máximo em 30 minutos.

> Os grupos que tem 3 integrantes tem que fazer a apresentação em no mínimo 30 minutos e no máximo em 40 minutos.

### Atividade para entrega

Elabore um programa em Python que lê um arquivo separado por vírgulas (,) e muda as vírgulas por ponto e vírgula (;), escrevendo o arquivo final com outro nome.

Envie o link do repositório.

## Aula 15 (Teórica)

## Linguagens funcionais, exemplos em Emacs LISP

A família de linguagens LISP é muito abrangente, tendo uma grande quantidade de dialetos. Pode-se dizer que dentro dela, existem dois grandes grupos:

- **LISP** propriamente dita, tendo como Common-LISP um dos maiores exemplos, seguido do Emacs-LISP; e
- **SCHEME**, com vários dialetos como GUILE, Chez-SCHEME & Racket, Gerbil & Gambit, etc.

Foi passado em sala, algumas noções iniciais de [Emacs-LISP](https://www.gnu.org/software/emacs/manual/html_node/eintr/), resumidas em um [tutorial](emacs-lisp/tutorial.el).

## Aula 16 (Prática)

## Emacs-LISP

Os alunos puderam rodar os exemplos do tutorial e fazer algumas experimentações com Emacs-LISP dentro do editor Emacs.

Foi explicado alguns conceitos sobre a programação funcional e funções em LISP, com exemplos no [tutorial](emacs-lisp/tutorial.el).


## Aula 17 (Teórica)

### Trabalhando com _buffers_
O [tutorial sobre manipulação de _buffers_](emacs-lisp/buffer.el) exemplifica comandos básicos para criação de _buffers_, leitura de arquivos, entre outros.

## Aula 18 (Prática)

### Introdução a conceitos de linguagem funcional em Python



### Atividade para entrega

Elabore um programa em LISP ou Python que lê um arquivo `input.dat`, cujo conteúdo consiste de linhas com dois inteiros cada x, y, separados por vírgula ou espaço.
O programa deve criar um novo arquivo `output.dat` que contenha o número de Fibonacci X do primeiro número e o fatorial Y do segundo número, respeitando a estrutura:

`Linha n: Fib(x)=X Fact(y)=Y`

Envie o link do repositório no E-Disciplinas USP.

#### Resolução em Emacs LISP

Para quem optou por utilizar o Emacs LISP, como ele tem algumas vantagens devido ao tipo `buffer`, seguem algumas dicas:

Deve-se trabalhar com dois _buffers_: b-in (_buffer_ de entrada de dados) e b-out (_buffer_ de saída de dados).

Criando os _buffers_:

```lisp
(setq b-in (find-file-noselect "input.dat"))
(setq b-out (find-file-noselect "output.dat"))
```

Um conjunto de funções interessantes seria:

```lisp
(split-string (buffer-substring-no-properties (line-beginning-position) (line-end-position))
(next-line)
```

O trecho de código acima retorna uma lista com as strings separadas por espaço. Veja que você pode usar outros separadores para `split-string`, no argumento opcional.

Para converter de string para número, use `string-to-number`.

Para varrer todo o _buffer_ de entrada, veja o código

```lisp
(with-current-buffer b-in
  (beginning-of-buffer)
  (while (not (eobp)) ;; eobp retorna verdadeiro para fim de buffer
    (let ((l1 (split-string (buffer-substring-no-properties (line-beginning-position) (line-end-position)))))
        ;; código para inserir no buffer de saída
        (with-current-buffer b-out
        ;; ... use a função insert que tem strings como argumento. A função format é como o printf, mas ela retorna uma string para a insert
            ))
    (next-line)))
```

No final, salve o _buffer_ de saída:

```lisp
(with-current-buffer b-out
    (save-buffer))
```

A solução completa pode ser vista no arquivo [funcional.el](./emacs-lisp/funcional.el), mas não é única, existem muitas variações.

## Aula 19 (Apresentações)

1. `numpy` + `scypy`
2. `datetime`

## Aula 20 (Apresentações)

1. `matplotlib`
2. `pandas`

## Aula 21 (Prática)

Teste nos serviços de _git hosting_, como [GitHub](http://github.com) e [GitLab](http://gitlab.com).

### Exemplos de automatização de testes usando GitHub Actions

- Para criar teste automático:

No projeto de interesse, acessar a aba Actions. Escolher a ação adequada para o projeto e clicar em Configure.

> Um arquivo de configuração (extensão `.yml`) é criado na pasta `/.github/workflows`.

- Estrutura básica do arquivo de configuração:
  - Define nome da ação
  ```yaml
  name: Exemplo de automatização
  ```
  - Define quando realizar as ações (no exemplo, realiza as ações na branch `main` após um Push ou Pull Request)
  ```yaml
  on:
  push:
    branches: [ "main" ]
  pull_request:
    branches: [ "main" ]
  ```
  - Define ambiente de execução e as ações em si (no exemplo, a única ação definida, "Compila programa", é definida pelo comando `make` e é executada no ambiente `ubuntu-latest` -  Ubuntu 20.04)
  ```yaml
  jobs:
    build:

      runs-on: ubuntu-latest

      steps:
      - uses: actions/checkout@v3
      - name: Compila programa
        run: make
  ```
    > Possibilidades disponíveis para o campo `runs-on` podem ser vistas [aqui](https://github.com/actions/runner-images).


## Aula 22 (Prática)

**Gtk + Python + Glade**: construindo aplicativos gráficos com a interface gráfica [Gtk](http://www.gtk.org), tutoriais em [Python GTK+ 3 Tutorial](https://python-gtk-3-tutorial.readthedocs.io/pt_BR/latest/index.html). Atualmente o Gtk está em sua versão 4 (_major version_), porém a distribuição Debian estável utiliza a versão 3.



