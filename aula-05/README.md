# Tabela com comandos Git e atalhos de teclado equivalentes no Emacs

- Atalhos no Emacs após entrar no ambiente de gerenciamento do Git  (Magit): `M-m g s`

| Comando Git                   | Atalho de teclado (Emacs)  | Descrição                                           |
|-------------------------------|----------------------------|-----------------------------------------------------|
| `git init`                    | ---                        | Inicializa repositório Git na pasta                 |
| `git clone linkdorepositorio` | ---                        | Baixa repositório remoto                            |
| `git status`                  | ---                        | Conferir status de arquivos                         |
| `git add nomedoarquivo`       | `s` (sobre o arquivo)      | Adicionar arquivo ao controle de versões (staged)   |
| `git reset nomedoarquivo`     | `u` (sobre o arquivo)      | Remover arquivo do controle de versões (unstaged)   |
| `git commit -m "comentario"`  | `c c` comentario `C-c C-c` | "Tira foto" de arquivos staged no repositório local |
| `git reset HEAD`              |                            | Retornar a commit anterior                          |
| `git branch`                  | ---                        | Verificar ramos de desenvolvimento                  |
| `git branch nomebranch`       | `b n` nomebranch           | Criar novo ramo de desenvolvimento                  |
| `git branch -d nomebranch`    | `b k` (selecionar branch)  | Remover ramo de desenvolvimento                     |
| `git checkout nomebranch`     | `b b` (selecionar branch)  | Mudar de ramo de desenvolvimento                    |
| `git merge nomebranch`        | `m m` (selecionar branch)  | Unir ramo `nomebranch` ao ramo atual (ex. main)       |
| `git pull origin`             | `F u`                      | Atualizar a partir de repositório remoto (origin)   |
| `git push -v origin`          | `P u`                      | Enviar arquivos atualizados para remoto (origin)    |
