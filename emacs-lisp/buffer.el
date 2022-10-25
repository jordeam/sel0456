(current-buffer)
(setq b1 (get-buffer-create "temp"))
(with-current-buffer "temp"
  (insert (format "a = %d\n" (* 2 3 4))))
(with-current-buffer "temp"
  (set-visited-file-name "temp.txt"))

(with-current-buffer b1
  (replace-regexp "\\([^[:space:]]+\\) *= *\\([^[:space:]]+\\)" "(setq \\1 \\2)"))


(with-current-buffer b1
  (replace-regexp "(?:^|,)(?=[^\"]|(\")?)\"?((?(1)[^\"]*|[^,\"]*))\"?(?=,|$)"))

(setq fn (buffer-file-name b1))
(file-name-base fn)
(file-name-extension fn)
(file-name-directory fn)

(with-temp-buffer
  (set-visited-file-name "temp2.txt")
  (insert "alguma coisa")
  (save-buffer))

(copy-file "temp2.txt" "temp3.txt")
(delete-file "temp3.txt")
(copy-directory "../separador" "sep")
(delete-directory "sep" t)
(shell-command "gtksudo")

(with-current-buffer b1
  (erase-buffer)
  (dolist (fn (directory-files-recursively ".." "\.py$"))
    (shell-command (format "wc %s" fn) b1)))

(with-current-buffer b1
  (point-min))

(point-max)
(point) (move-beginning-of-line 3)
(progn
  (beginning-of-buffer)
  (forward-word))
