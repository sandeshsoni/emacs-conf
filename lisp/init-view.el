(require-package 'web-mode)
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))

(defun my-web-mode-hook ()
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-comment-style 2)
  web-mode-folded-face, web-mode-warning-face, web-mode-whitespace-face, web-mode-comment-keyword-face   
  (set-face-attribute 'web-mode-css-rule-face nil :foreground "Pink3")
  (setq web-mode-enable-block-face t)
  (setq web-mode-enable-comment-keywords t)
  (setq web-mode-enable-current-element-highlight t)
  (setq web-mode-enable-auto-pairing t)
  )
(add-hook 'web-mode-hook 'my-web-mode-hook)

(add-to-list 'auto-mode-alist '("/\\(views\\|html\\|templates\\)/.*\\.html\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("/\\(views\\|html\\|templates\\)/.*\\.js\\.erb\\'" . web-mode))

(add-hook 'local-write-file-hooks
	  (lambda ()
	    (delete-trailing-whitespace) nil))

(provide 'init-view)
