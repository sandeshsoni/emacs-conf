;; navigating windows using arrow keys
(global-set-key (kbd "C-x <up>") 'windmove-up)
(global-set-key (kbd "C-x <down>") 'windmove-down)
(global-set-key (kbd "C-x <left>") 'windmove-left)
(global-set-key (kbd "C-x <right>") 'windmove-right)

;; indentation
(define-key global-map (kbd "RET") 'reindent-then-newline-and-indent) ;; indents on going to the newline

;; splitting windows
(global-set-key (kbd "C-x |") 'split-window-horizontally) ;; horizontally
(global-set-key (kbd "C-x _") 'split-window-vertically)   ;; vertically

(provide 'init-custom-bindings)
