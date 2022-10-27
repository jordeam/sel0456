;;
;; Funções para a manipulação de Buffers
::

;; retorna um objeto que representa o buffer corrente
(current-buffer)

;; cria um novo buffer e muda para ele, ou só muda para ele se já existe
(setq b1 (get-buffer-create "temp"))

;; Muda temporariamente para um buffer, para fazer algumas alterações e volta
;; para o buffer original
(with-current-buffer "temp"
  (insert (format "a = %d\n" (* 2 3 4))))

;; para alterar o nome do buffer corrente, nesse caso, muda para um buffer já
;; existente e muda o nome de arquivo associado a ele
(with-current-buffer "temp"
  (set-visited-file-name "temp.txt"))

;; Exemplo de regexp
;; neste caso, altera todas as linhas no formato:
;; `var = value`
;; para:
;; `(setq var value)'
(with-current-buffer b1
  (replace-regexp "\\([^[:space:]]+\\) *= *\\([^[:space:]]+\\)" "(setq \\1 \\2)"))


;; Retorna o nome de arquivo de um buffer, no caso "temp.txt"
(setq fn (buffer-file-name b1))

;; Retorn somente o nome base
(file-name-base fn) ;; "temp"

;; Retorna somente a extensão
(file-name-extension fn) ;; "txt"

;; Retorna o nome de diretório
(file-name-directory fn)

;; Cria um buffer temporário, opera nele e retorna destruindo o buffer
(with-temp-buffer
  (set-visited-file-name "temp2.txt") ;; altera o nome de arquivo associado ao
                                      ;; buffer
  (insert "alguma coisa") ;; insere algum texto
  (save-buffer)) ;; salva o buffer no disco antes de retornar destruindo o buffer

(copy-file "temp2.txt" "temp3.txt") ;; copia arquivos

(delete-file "temp3.txt") ;; apaga um arquivo
(copy-directory "../separador" "sep") ;; copia um diretório inteiro

(delete-directory "sep" t) ;; apaga um diretório inteiro, recursivamente

;; Seleciona o buffer salvo em b1, apaga o buffer e escreve a saída de um
;; comando externo nele
(with-current-buffer b1
  (erase-buffer)
  (dolist (fn (directory-files-recursively ".." "\.py$"))
    (shell-command (format "wc %s" fn) b1)))

;; Retorna a primeira posição do buffer
(with-current-buffer b1
  (point-min))

;; Última posição do buffer
(point-max)

;; retorna posição corrente
(point)

;; Vai para a terceira linha após essa posição
(move-beginning-of-line 3)

;; para executar comandos em série, nesse caso, vai para o começo do buffer e
;; avança uma palavra
(progn
  (beginning-of-buffer)
  (forward-word))
