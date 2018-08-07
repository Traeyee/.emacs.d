(require 'projectile)
(require 'setup-ggtags)
(require 'setup-irony)


(projectile-mode)
(eval-after-load 'flycheck
				   '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))
