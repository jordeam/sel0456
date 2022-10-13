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
- Conclusão do trabalho de cálculo do número n da sequência de Fibonacci
