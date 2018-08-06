(require 'projectile)

(projectile-mode)
(eval-after-load 'flycheck
				   '(add-hook 'flycheck-mode-hook #'flycheck-irony-setup))
