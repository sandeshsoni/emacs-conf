(require-package 'flymake-ruby)
(add-hook 'ruby-mode-hook 'flymake-ruby-load)

;; Override default flycheck triggers
(setq flycheck-check-syntax-automatically '(save idle-change mode-enabled)
      flycheck-idle-change-delay 0.8)

(provide 'init-flymake)
