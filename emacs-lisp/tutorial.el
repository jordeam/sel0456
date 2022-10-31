;;
;; Tutorial Emacs LISP
;;
;; Conceitos Iniciais:
;; Abra um arquivo com a extensão .el, ou então, na primeira linha do arquivo:
;; -*- mode: Emacs-Lisp;-*-

;; Para executar uma expressão, pressione C-x C-e (control+x control+e, em sequência) que execute o comando eval-last-sexp
;; Pode-se fazer um eval em um inteiro, uma string:
1
"abc"

;; As funções são o primeiro argumento de uma lista, não existem operadores,
;; operadores como + ou - de outras linguagens são funções. Digite C-x C-e após
;; a expressão a seguir para conseguir o valor 44 decimal: 1 + 1 + (6 * 7)
(+ 1 1 (* 6 7))

;; Internamente, será executado chamando a função correspondente, por exemplo:
(- 3 4 3) ;; Notação INFIX:=> sub(3, 4, 3)

;; A palavra reservada nil significa nulo ou vazio e em uma condição, tem seu
;; valor como falso:
nil

;; Uma expressão com if, segue o mesmo raciocínio das funções, o if deve ser o
;; primeiro termo da lista. No caso o if possui o formato: (if condição
;; executa-se-verdadeiro executa-se-falso), ou (if cond then else):
(if nil 1 2) ;; como nil é falso, não executa o 1, somente o 2, portanto, essa
             ;; expressão retorna 2

;; Para atribuir um valor a um símbolo (símbolo é oi nome de uma variável), nbo
;; caso, para fazer x = 2:
(setq x 2) ;; x = 2

;; Pode-se realizar uma operação com x:
(+ x 4)

;; Caso queira receber uma notificação ou mensagem, como um log, usa-se a função
;; message. Essa função escreve em um buffer denomibado por *Message*
(message (if (not (= x 2)) "igual" "diferente"))

;; Loop while: (while cond comandos ... )
(while (not (= x 4))
  (message "not 4")
  (setq x (+ x 1)))

;; definindo uma lista:
(setq l (list 1 2 3 4))

;; iterando em uma lista
(dolist (i l)
  (insert (format "i=%d\n" i)))

;; Pode-se atribuir um símbolo a outro, nesse caso y tem op símbolo x, que por sua vez tem um inteiro 2
(setq y 'x)
(eval y) ;; => 2

;; setq é um macro que é equivalente a (set 'var value), onde o ' é chamado de
;; quote, não faz um eval na expressão:
(setq x 1) (set 'x 1) ;; são equivalentes

;; "Operadores" lógicos, uma vez que não temos operadores, or ou and não executam todos os estados, or, por exemplo, executa até encontar algo verdadeiro, ou seja, algo que é diferente de nil (falso ou vazio), e and executa até encontrar algo nil. O símbolo t é um valor true genérico.
(or nil nil t nil) ;; retorna t
(or nil nil 0 nil) ;; retorna 1
(or nil 0 1 nil) ;; retorn 0 => 0 é considerado verdadeiro, pois somente nil é
                 ;; falso.
(and 1 0 3) ;; retorna 3, pois 0 é verdadeiro, não é nil
(and 0 nil 1) ;; retorna nil

;; Às vezes, utilizar a notação s-expression é mais vantajosa do que a INFIX:
(setq res (and t t t 1 0)) => res = t and t and t and t and 1 and 0 and nil

;; O macro or é interessante para atribuir um valor default caso a variável não esteja explicitamente definida com algum valor, ou seja, contenha nil:
(setq user-input nil)
(setq value (or user-input "valor default")) ;; nesse caso, se user input foi
                                             ;; defidido, value conterá esse
                                             ;; valor, caso contrário, como
                                             ;; nesse exemplo, conterá o valor
                                             ;; default

;; Definindo listas com quote:
(setq a 4)
(setq l2 (list a 'b 3 'd 'e)) ;; aqui, o valor de a será utilizado, popis a será
                              ;; executado
(setq l3 '(a b c d e)) ;; neta a diferença com a definição usando list

;; Símbolos podem conter caracteres especiais:
(setq a:bcd 1)
(+ a:bcd 9)

(setq a_b 2)
(setq a-b 4)
(setq a/b 3)

(setq l4 '(+ a_b a-b a/b)) ;; define a lista l4
l4 ;; C-x C-e mostra o valor
(eval l4) ;; executa o primeiro símbolo como função e mostra o resultado

;; Tipos são são executados para eles mesmos:
(eval (car l2)) ;; car pega o primeiro termo da lista

;; Acessando elementos arbitrariamente:
(+ (nth 2 l2) 3)

;; redefinindo símbolos:
(setq - 1)
(- 1 2) ;; ainda funciona, pois um símbolo aponta para uma função e para um valor. No caso o - não apontava para nenhum valor, agora aponta para o valor 1:
(- - 1) ;; = 0 !! Não seria necessário dizer que essa é uma prática
        ;; desacoonselhável em prol da legibilidade do código.

;; Mais sobre listas:
(setq l '(1 2 3 4 5))
;; Primeiro elemento da lista
(car l)
;; Lista a partir do sengundo elemento da lista l
(cdr l)

;; Célula (par):
(setq c (cons 'a 2))
(car c) ;; primeiro elemento: símbolo a
(cdr c) ;; segundo elemento: 2
c ;; representação (a . 2)
;;  é diferente de:
(setq d (list 1 2))
(car d) ;; primeiro elemento: 1
(cdr d) ;; lista de único elemento (2)

;; Emendando uma lista na outra:
(setcdr c (cdr l))
c

;; alterando elementos, utilizando a função setf: essa função é um setter para o
;; local do getter
(setf (nth 2 l) 'aqui)
l ;; verifique os elementos de l
c ;; note que ele não duplica valores

;;
;; Funções
;;

;; Definindo uma função f, o valor retornado é o último a ser executado
(defun f (x)
  (* x x))

;; invocando f, equivalente a f(2) em Python, por exemplo.
(f 2)

;; Definindo uma função fatorial
(defun fact (x)
  (if (or (= x 0) (= x 1))
      1
    (* x (fact (- x 1)))))

;; Chamando a função:
(fact 4)

;; Usando recursividade com listas
(setq l '(1 2 3 4))
(defun sqr (x) (* x x))

(defun list-quad (l)
  (and l
       (cons l (list-quad (cdr l)))))

(list-quad l)

;; alterando a estrutura de listas
(cons l (list (list 1)))

;; redefinindo uma tecla
(global-set-key "\C-u" #'undo)

;; escrevendo em buffers e posições
(with-current-buffer "*scratch*"
  (goto-char 1)
  (insert " x ")
  (message (format "point=%d" (point))))


;; funções anônimas lambda e mapcar a função mapcar aplica uma função em cada um
;; dos elementos da lista e retorna o resultado da aplicação em outra lista
(mapcar (lambda (x) (* x x x)) (list 1 2 3 5))

;; equivalente a:
(defun cube (x) (* x x x))
(mapcar #'cube (list 1 2 3 5))

;; atribuindo uma função anônima a um símbolo
(setq f (lambda (x) (* x x x)))
(f 2)

;; equivalente nil (vazio)
(setq n '())


;; Controle de fluxo
(while cond cmd1 cmd2 ...)

;; usando while e ambientes (environments)
;; x é definido somente dentro do let
(let ((x 5))
  (while (> x 0)
    (insert (+ x ?0))
    (setq x (- x 1))))

;; erro se for feito o eval da proxima sentença
x

;; ambientes
(let ((x 3)
      (y 2))
  (setq x 4)
  (message (format "x = %d" x))
  (* x y))

;; sequência de comandos sem ambiente
(progn
  "sempre"
  "retorna"
  "o"
  "último")

;; documentação de funções
(defun fx ()
  "Documentação da função fx: ela retorna a string 'último'."
  "sempre"
  "retorna"
  "o"
  "último")

;; pesquisando sobre as funções e documentações
(documentation #'mapcar)
(documentation #'fx)

