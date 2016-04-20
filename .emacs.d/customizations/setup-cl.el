(add-to-list 'auto-mode-alist '("\\.cl$" . lisp-mode))
(add-to-list 'auto-mode-alist '("\\.lisp$" . lisp-mode))

;; Automatically load paredit when editing a lisp file
;; More at http://www.emacswiki.org/emacs/ParEdit
(autoload 'enable-paredit-mode "paredit" "Turn on pseudo-structural editing of Lisp code." t)

(add-hook 'lisp-mode-hook             #'enable-paredit-mode)

;; SLIME - Set your lisp system and some contribs
(setq inferior-lisp-program "sbcl")
;;(setq slime-contribs '(slime-scratch slime-editing-commands))
;;(require 'slime)
;;(slime-setup)

;; Setup load-path, autoloads and your lisp system
;; Not needed if you install SLIME via MELPA
(add-to-list 'load-path "../slime")
(require 'slime-autoloads)
(setq inferior-lisp-program "sbcl")
;;(setq slime-contribs '(slime-scratch slime-editing-commands))
(require 'slime)
(slime-setup)