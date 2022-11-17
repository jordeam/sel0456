(setq b-in (find-file-noselect "input.dat"))
(setq b-out (find-file-noselect "output.dat"))

(with-current-buffer b-out
  (erase-buffer))

(defun Fib (n)
  (cond ((= n 0) 0)
        ((= n 1) 1)
        (t (+ (Fib (- n 1)) (Fib (- n 2))))))

(defun fact (n)
  (cond ((= n 0) 1)
        ((= n 1) 1)
        (t (* n (fact (- n 1))))))

(with-current-buffer b-in
  (let ((i 1))
    (beginning-of-buffer)
    (while (not (eobp))
      (let ((l1 (mapcar #'string-to-number (split-string (buffer-substring-no-properties (line-beginning-position) (line-end-position))))))
        (if (length= l1 2)
            (with-current-buffer b-out
              (insert (format "Linha %d: Fib(%d)=%d fact(%d)=%d\n" i (car l1) (Fib (car l1)) (cadr l1) (fact (cadr l1)))))))
      (next-line))))

(with-current-buffer b-out
  (save-buffer))
