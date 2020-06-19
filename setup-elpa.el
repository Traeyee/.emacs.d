;; irony configure
(add-hook 'c++-mode-hook 'irony-mode)
(add-hook 'c-mode-hook 'irony-mode)
(add-hook 'objc-mode-hook 'irony-mode)

(add-hook 'irony-mode-hook 'irony-cdb-autosetup-compile-options)
;; yasnippet configure
;; (yas-global-mode 1)
;; elpy configure
(setq elpy-rpc-virtualenv-path "")
(setq elpy-rpc-timeout 10)
(elpy-enable)
;; =================================
;; cquery configure
(setq cquery-executable "~/local/cquery/bin/cquery")
