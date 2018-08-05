;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.



;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")
(let ((default-directory  "~/.emacs.d/lisp/"))
    (normal-top-level-add-subdirs-to-load-path))
(add-to-list 'exec-path "~/bin")
;; (add-to-list 'load-path "~/myelpa/")
;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized-master")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; Managing packages . ----------------------------------------------------------------------------
(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))


(windmove-default-keybindings)

;; Managing plug-ins . ----------------------------------------------------------------------------------
(require 'unicad)
(require 'smex) ; Not needed if you use package.el
;; (smex-initialize) ; Can be omitted. This might cause a (minimal) delay
                                        ; when Smex is auto-initialized on its first run.
;; (require 'cc-mode)
;; (require 'semantic)
;; (require 'company)
;; (require 'setup-irony)
;; (require 'my-setup-ggtags)
(require 'google-c-style)
;; (require 'tramp)
;; (require 'auto-complete)

(require 'setup-elpa)
;; --------------------------------------------------------------------------------------------------------
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(current-language-environment "UTF-8")
 '(custom-enabled-themes (quote (ample-zen)))
 '(custom-safe-themes
   (quote
    ("ace9f12e0c00f983068910d9025eefeb5ea7a711e774ee8bb2af5f7376018ad2" default)))

 ;; generral options
 '(inhibit-startup-screen t)
 '(electric-pair-mode t)
 '(show-paren-mode t)
 '(global-linum-mode t)
 
 ;; semantic-related
 ;; '(global-semanticdb-minor-mode t)
 ;; '(global-semantic-idle-scheduler-mode t)
 ;; '(semantic-mode t)
 )


(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)

(add-hook 'after-init-hook 'global-company-mode)


(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
(global-set-key (kbd "M-_") 'beginning-of-buffer)
(global-set-key (kbd "M-+") 'end-of-buffer)

;; (global-set-key (kbd "M-<up>") 'windmove-up)              ; move to upper window
;; (global-set-key (kbd "M-<down>") 'windmove-down)          ; move to lower window
;; (global-set-key (kbd "M-<left>") 'windmove-left)              ; move to leftper window
;; (global-set-key (kbd "M-<right>") 'windmove-right)          ; move to lower window


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

