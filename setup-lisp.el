(require 'projectile)
(require 'setup-ggtags)
(require 'setup-irony)


(projectile-mode)
(eval-after-load 'flycheck
  '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))

;; rtags configure
(require 'rtags)
(require 'company-rtags)
(setq rtags-completions-enabled t)
(setq rtags-autostart-diagnostics t)

(add-hook 'c-mode-hook 'rtags-start-process-unless-running)
(add-hook 'c++-mode-hook 'rtags-start-process-unless-running)
(add-hook 'objc-mode-hook 'rtags-start-process-unless-running)


(eval-after-load 'company
  '(add-to-list
    'company-backends 'company-rtags))

(rtags-enable-standard-keybindings)
;; =================================
;; irony
(eval-after-load 'company '(add-to-list 'company-backends 'company-irony))
