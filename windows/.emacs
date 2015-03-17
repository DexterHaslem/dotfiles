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
 '(default ((t (:inherit nil :stipple nil :background "#242424" :foreground "#f6f3e8" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 133 :width normal :foundry "outline" :family "Consolas")))))

; OTP 17.1 x64
;(setq load-path (cons "C:/Program Files/erl6.1/lib/tools-2.6.15/emacs" load-path))
;(setq erlang-root-dir "C:/Program Files/erl6.1")
;(setq exec-path (cons "C:/Program Files/erl6.1/bin" exec-path))
;(require 'erlang-start)

(setq-default tab-width 4)
(setq-default c-basic-offset 4)

;;(setq inferior-lisp-program "C:/Program Files (x86)/Steel Bank Common Lisp/1.1.12/sbcl.exe")-	debug
;; CCL windows x64 (setq inferior-lisp-program "wx86cl")
;; SBCL (setq inferior-lisp-program "C:/lisp/sbcl/sbcl.exe") barff threads

(setq inferior-lisp-program "clisp")
(add-to-list 'load-path "C:/lisp/slime")
;; dont use ~ here, it will expand to appdata
;;(load "C:\Users\Dexter\quicklisp\slime-helper.el")
;;(load (expand-file-name "C:/lisp/quicklisp\\slime-helper.el"))

(require 'slime)
(slime-setup)

(require 'slime-autoloads)
(add-hook 'lisp-mode-hook (lambda () (slime-mode t)))
(add-hook 'inferior-lisp-mode-hook (lambda () (inferior-slime-mode t)))

; disable splash screen and crap
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)