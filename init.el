;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.



;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

;; (package-initialize)

(add-to-list 'load-path "~/.emacs.d/lisp/")
(let ((default-directory  "~/.emacs.d/lisp/"))
  (normal-top-level-add-subdirs-to-load-path))
(add-to-list 'exec-path "~/bin")
;; (add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized-master")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; Managing packages . ----------------------------------------------------------------------------
;; (when (>= emacs-major-version 24)
;;   (require 'package)
;;   (add-to-list
;;    'package-archives
;;    '("melpa" . "http://melpa.org/packages/")
;;    t))
(setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
                         ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")))
;; (setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
;;                          ("melpa stable" . "https://stable.melpa.org/packages/")))
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
;; emacs china被封了
;; (setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
;;  			 ("melpa" . "http://elpa.emacs-china.org/melpa/")))
(package-initialize)


(load-file "~/.emacs.d/setup-lisp.el")
(load-file "~/.emacs.d/setup-elpa.el")
(setq custom-file "~/.emacs.d/custom.el")
(load custom-file :noerror)
;; Managing plug-ins . ----------------------------------------------------------------------------------
(require 'unicad)
(require 'window-number)
(require 'smex) ; Not needed if you use package.el
;; (smex-initialize) ; Can be omitted. This might cause a (minimal) delay
                                        ; when Smex is auto-initialized on its first run.
;; (require 'cc-mode)
;; (require 'semantic)
(require 'company)
;; (require 'my-setup-ggtags)
(require 'bytedance-c-style)
;; (require 'auto-complete)
;; --------------------------------------------------------------------------------------------------------

;; (defun package--save-selected-packages (&rest opt) nil)

(add-hook 'c-mode-common-hook 'bytedance-set-c-style)
(add-hook 'c-mode-common-hook 'bytedance-make-newline-indent)

(add-hook 'after-init-hook 'global-company-mode)

(column-number-mode)
(window-number-mode)
(winner-mode)
(global-undo-tree-mode)

(windmove-default-keybindings)


(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)
(global-set-key (kbd "M-_") 'beginning-of-buffer)
(global-set-key (kbd "M-+") 'end-of-buffer)
(global-set-key (kbd "M-{") 'scroll-other-window-down)
(global-set-key (kbd "M-}") 'scroll-other-window)

;; (global-set-key (kbd "M-<up>") 'windmove-up)              ; move to upper window
;; (global-set-key (kbd "M-<down>") 'windmove-down)          ; move to lower window
;; (global-set-key (kbd "M-<left>") 'windmove-left)              ; move to leftper window
;; (global-set-key (kbd "M-<right>") 'windmove-right)          ; move to lower window

(define-coding-system-alias 'utf8 'utf-8)
(define-coding-system-alias 'UTF-8'utf-8)

(set-face-attribute 'default (selected-frame) :height 168)

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

