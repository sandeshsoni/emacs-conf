;;(use-package projectile-rails)
;; (defvar required-packages
;;   '(
;;     projectile-rails
;;     )
;; )
(require-package 'projectile-rails)
(projectile-global-mode)
(add-hook 'projectile-mode-hook 'projectile-rails-on)
(provide 'init-projectile)
