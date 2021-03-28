;; ME --- MY EMACS

(require 'org)

;;; Code:

(defun me/copy-emacs-conf ()
  (copy-file "./out/emacs" "~/.emacs.d/init.el" t))

(defun me/tangle-and-reload-emacs ()
  (interactive)
  (org-babel-tangle-file "./emacs.org")
  (me/copy-emacs-conf) 
  (load-file "~/.emacs.d/init.el"))

(provide 'me)

