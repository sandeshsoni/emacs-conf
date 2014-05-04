(require-package 'ack-and-a-half)
(require-package 'projectile-rails)
(projectile-global-mode)

(add-hook 'projectile-mode-hook 'projectile-rails-on)
(provide 'init-projectile)
