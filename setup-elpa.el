;; (setq rtags-completions-enabled t)
;; (setq rtags-autostart-diagnostics t)


(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)

;; (add-hook 'c-mode-hook 'rtags-start-process-unless-running)
;; (add-hook 'c++-mode-hook 'rtags-start-process-unless-running)
;; (add-hook 'objc-mode-hook 'rtags-start-process-unless-running)

;; company-rtags
;; (eval-after-load 'company '(add-to-list 'company-backends 'company-irony))
;; (eval-after-load 'company
;;   '(add-to-list
;;     'company-backends 'company-rtags))
;; 
;; (rtags-enable-standard-keybindings)

