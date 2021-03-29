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


;; create symlink, this function also converts relative path to absolute, override
(defun me/make-symbolic-link (source target)
  (make-symbolic-link (expand-file-name source) (expand-file-name target) t))
