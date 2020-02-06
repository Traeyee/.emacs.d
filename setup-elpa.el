;; irony configure
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
;; elpy configure
(setq elpy-rpc-virtualenv-path "")
(elpy-enable)
;; =================================

