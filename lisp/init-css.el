;; rainbow-mode needs color.el
(require-package 'rainbow-mode)
(dolist (hook '(css-mode-hook html-mode-hook sass-mode-hook))
  (add-hook hook 'rainbow-mode))

;; LESS
;; (require-package 'less-css-mode)
;; (when (featurep 'js2-mode)
;;   (require-package 'skewer-less))

;; provide
(provide 'init-css)
