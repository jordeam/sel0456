(+ 1 1 (* 6 7))

nil

(setq x 2) ;; x = 2
(+ x 4)

(if nil 1 2)

(message (if (not (= x 2)) "igual" "diferente"))

(while (not (= x 4))
  (message "not 4")
  (setq x (+ x 1)))

(setq l (list 1 2 3 4))

(dolist (i l)
  (insert (format "i=%d\n" i)))

(set y 3)
x
(eval y)

(setq x 1) equivalente a (set 'x 1)
(setq x "abc")

(or nil nil t nil)
(setq res (and t t t 1 0))
res
    "verdadeiro"
  "falso"
INFIX: t and t and t and t and 1 and 0 and nil

(setq user nil)
(setq value (or user "valor default"))

'z z

(setq l2 (list a 'b 3 'd 'e))
(setq l3 '(a b c d e))

(setq a:bcd 1)

(+ a:bcd 9)
(- 3 4 3) => sub(3, 4, 3)
(* 2 3 4 5)
(setq a_b 2)
(setq a-b 4)
(setq a/b 3)

(setq l4 '(+ a_b a-b a/b))
l4
(eval l4)




(eval (car l2))
(+ (nth 2 l2) 3)
(setq - 1)
(- 1 2)
'=

(car l)
(cdr (cdr l))

(setq c (cons 'a 2))
(car c)
(cdr c)
(setq d (list 1 2))
d
(car d)
(cdr d)
c
(setcdr c (cdr l))
c
(setf (nth 2 l) 'aqui)
(setq l 0)
