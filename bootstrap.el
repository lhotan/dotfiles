#!/usr/local/bin/emacs --script

(require 'org)

(unless (file-exists-p "out")
  (make-directory "out"))

(org-babel-tangle-file "git.org")
(org-babel-tangle-file "emacs.org")