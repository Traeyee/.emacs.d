(require 'projectile)
(require 'setup-ggtags)


(projectile-mode)
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

;; rtags configure
;; (require 'rtags)
;; (require 'company-rtags)
;; (require 'flycheck-rtags)
;; (setq rtags-completions-enabled t)
;; (setq rtags-autostart-diagnostics t)
;; 
;; (add-hook 'c-mode-hook 'rtags-start-process-unless-running)
;; (add-hook 'c++-mode-hook 'rtags-start-process-unless-running)
;; (add-hook 'objc-mode-hook 'rtags-start-process-unless-running)
;; 
;; 
;; (eval-after-load 'company
;;   '(add-to-list
;;     'company-backends 'company-rtags))
;; 
;; (rtags-enable-standard-keybindings)
;; 
;; 
;; (defun my-flycheck-rtags-setup ()
;;     (flycheck-select-checker 'rtags)
;; 	  (setq-local flycheck-highlighting-mode nil) ;; RTags creates more accurate overlays.
;; 	    (setq-local flycheck-check-syntax-automatically nil))
;; (add-hook 'c-mode-hook 'my-flycheck-rtags-setup)
;; (add-hook 'c++-mode-hook 'my-flycheck-rtags-setup)
;; (add-hook 'objc-mode-hook 'my-flycheck-rtags-setup)

;; =================================
;; irony
(eval-after-load 'company '(add-to-list 'company-backends 'company-irony))

