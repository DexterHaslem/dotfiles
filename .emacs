(set-language-environment "utf-8")

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

;; NOTE: even tho ql says to put "~/quicklisp" that doesnt work on windows, because that expands to appdata, but quick lisp ended up installed to users/dexter/quicklisp :( so just use fullpath wtf
;; removed the slime setup instructions over just the quicklisp stuff (which is already in init)

(load (expand-file-name "C:/Users/Dexter/quicklisp/slime-helper.el"))
(setq inferior-lisp-program "wx86cl64 -K utf-8")

; disable splash screen and crap
(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

