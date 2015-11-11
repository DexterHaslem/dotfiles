(set-language-environment "utf-8")

;; disable autosave and backups
;; woopee im from not the 80s
(setq backup-inhibited t)
(setq auto-save-default nil)
;; this doesnt work. 
;;(line-number-mode 1)

;; make yes/no less annoying
(defalias 'yes-or-no-p 'y-or-n-p)

;; turn off initial scratch buffer message
(setq initial-scratch-message "")

;; enable paren-matching
(show-paren-mode t)

;; all buffers sure
;;(global-linum-mode t)

(add-hook 'lisp-mode-hook
	  ;; might be better way to do this
	  (lambda ()
	    (linum-mode 1)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (wombat)))
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "#242424" :foreground "#f6f3e8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 120 :width normal :foundry "outline" :family "Consolas")))))

 ;; installed slime via MELPA
(add-to-list 'load-path "D:/lisp/slime-2.15/")
(require 'slime-autoloads)
(setq slime-contribs '(slime-fancy)) ; almost everything
(add-hook 'lisp-mode-hook (lambda () (slime-mode t)))
(add-hook 'inferior-lisp-mode-hook (lambda () (inferior-slime-mode t)))

;; clozure cl winx64
(setq inferior-lisp-program "wx86cl64")

;;(setq inferior-lisp-program "sbcl")

; disable splash screen and crap
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

(require 'package)
(add-hook 'haskell-mode-hook 'haskell-indentation-mode)

(autoload 'ghc-init "ghc" nil t)
(autoload 'ghc-debug "ghc" nil t)
(add-hook 'haskell-mode-hook (lambda () (ghc-init)))
(require 'evil)
(evil-mode 1)


;; lets use something with decent tooling woopieee
(setq load-path (cons "D:/erl7.1/lib/tools-2.8.1/emacs" load-path))
(setq erlang-root-dir "D:/erl7.1")
(setq exec-path (cons "D:/erl7.1/bin" exec-path))
(require 'erlang-start)
