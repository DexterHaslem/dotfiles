(require 'package)
;;(add-to-list 'package-archives
;;            '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/"))


(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))


(defvar my-packages
  '(
    paredit
	ido-ubiquitous
    smex
    projectile
    rainbow-delimiters
    evil	
    neotree
	;; dont use package version of these, doesnt work right for some reason
	;; quicklisp version is much better
	;;slime
))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;;(add-to-list 'load-path "~/.emacs.d/vendor")

;; Turn off the menu bar at the top of each frame because it's distracting
(menu-bar-mode -1)
;; same for tool bar
(tool-bar-mode -1)

;; Show line numbers
(global-linum-mode)

;; No cursor blinking, it's distracting
(blink-cursor-mode 0)

;; full path in title bar
(setq-default frame-title-format "%b (%f)")

;; don't pop up font menu
(global-set-key (kbd "s-t") '(lambda () (interactive)))

;; no bell
(setq ring-bell-function 'ignore)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/themes")
(load-theme 'tomorrow-night-bright t)

;; increase font size for better readability
(set-face-attribute 'default nil :height 140)
(add-to-list 'default-frame-alist '(font . "Consolas-14" ))
(set-face-attribute 'default t :font "Consolas-14" )

;; Uncomment the lines below by removing semicolons and play with the
;; values in order to set the width (in characters wide) and height
;; (in lines high) Emacs will have whenever you start it
(setq initial-frame-alist '((top . 0) (left . 0) (width . 150) (height . 45)))

;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;; shell scripts
(setq-default sh-basic-offset 2)
(setq-default sh-indentation 2)

;; No need for ~ files when editing
(setq create-lockfiles nil)

;; Go straight to scratch buffer on startup
(setq inhibit-startup-message t)
(setq inhibit-splash-screen t)

;; setup lisp, slime installed w/ quicklisp
;; this is what docs say to do - it is wrong on windows ~ goes to appdata
(setq inferior-lisp-program "sbcl")
;;(setq inferior-lisp-program "wx86cl64")
;; (load (expand-file-name "~/quicklisp/slime-helper.el"))
;; but QL installs to users root. stupid
(load "C:/Users/Dexter/quicklisp/slime-helper.el")

;; NOTE about getting ql going:
;;$ wget http://beta.quicklisp.org/quicklisp.lisp
;;$ sbcl --load ./quicklisp.lisp
;;* (quicklisp-quickstart:install)
;;* (ql:add-to-init-file)
;;* (ql:quickload "quicklisp-slime-helper")
;;* (quit)
;;(load (expand-file-name "~/quicklisp/slime-helper.el"))

;; aahhh random modes being in 8 can freak off
(setq-default tab-width 4)
(setq-default indent-tabs-mode t)
;; Highlights matching parenthesis
(show-paren-mode 1)

;; Highlight current line
(global-hl-line-mode 1)
  
(rainbow-delimiters-mode)

(require 'evil)
(evil-mode 1)

;; navigation 

(require 'uniquify)
(setq uniquify-buffer-name-style 'forward)

;; Turn on recent file mode so that you can more easily switch to
;; recently edited files when you first start emacs
(setq recentf-save-file (concat user-emacs-directory ".recentf"))
(require 'recentf)
(recentf-mode 1)
(setq recentf-max-menu-items 40)

(ido-mode t)

;; This allows partial matches, e.g. "tl" will match "Tyrion Lannister"
(setq ido-enable-flex-matching t)

;; Turn this behavior off because it's annoying
(setq ido-use-filename-at-point nil)

;; Don't try to match file across all "work" directories; only match files
;; in the current directory displayed in the minibuffer
(setq ido-auto-merge-work-directories-length -1)

;; Includes buffer names of recently open files, even if they're not
;; open now
(setq ido-use-virtual-buffers t)

;; This enables ido in all contexts where it could be useful, not just
;; for selecting buffer and file names
(ido-ubiquitous-mode 1)

;; Shows a list of buffers
(global-set-key (kbd "C-x C-b") 'ibuffer)


;; Enhances M-x to allow easier execution of commands. Provides
;; a filterable list of possible commands in the minibuffer
;; http://www.emacswiki.org/emacs/Smex
(setq smex-save-file (concat user-emacs-directory ".smex-items"))
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)

;; projectile everywhere!
(projectile-global-mode)

;; setup neotree
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)
;; everytime window opened, jump to current file node
(setq neo-smart-open t)
;; let projectile move neotree root
(setq projectile-switch-project-action 'neotree-projectile-action)

;; evil is used, so fix neotree bindngs
(add-hook 'neotree-mode-hook
          (lambda ()
            (define-key evil-normal-state-local-map (kbd "TAB") 'neotree-enter)
            (define-key evil-normal-state-local-map (kbd "SPC") 'neotree-enter)
            (define-key evil-normal-state-local-map (kbd "q") 'neotree-hide)
            (define-key evil-normal-state-local-map (kbd "RET") 'neotree-enter)))
