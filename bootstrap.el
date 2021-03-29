#!/usr/local/bin/emacs --script

(require 'org)
(load-file "./me.el")

;;; Code:
(unless (file-exists-p "out")
  (make-directory "out"))

(org-babel-tangle-file "git.org")
(org-babel-tangle-file "emacs.org")

(me/make-symbolic-link "~/dotfiles/out/gitconfig" "~/.gitconfig")
(me/make-symbolic-link "~/dotfiles/out/emacs" "~/.emacs.d/init.el")
