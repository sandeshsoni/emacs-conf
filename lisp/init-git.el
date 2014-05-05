(require-package 'git-gutter+)
(require-package 'git-gutter-fringe+)
(global-git-gutter+-mode t)
;; (set-face-foreground 'git-gutter-fr+-modified "yellow")
;; (set-face-foreground 'git-gutter-fr+-added    "blue")
;; (set-face-foreground 'git-gutter-fr+-deleted  "white")

;; If you enable git-gutter-mode for some modes
(add-hook 'ruby-mode-hook 'git-gutter-mode)

(global-set-key (kbd "C-x C-g") 'git-gutter:toggle)
(global-set-key (kbd "C-x v =") 'git-gutter:popup-hunk)

;; Jump to next/previous hunk
(global-set-key (kbd "C-x p") 'git-gutter+-previous-hunk)
(global-set-key (kbd "C-x n") 'git-gutter+-next-hunk)

;; Stage current hunk
(global-set-key (kbd "C-x v s") 'git-gutter+-stage-hunk)

;; Revert current hunk
(global-set-key (kbd "C-x v r") 'git-gutter+-revert-hunk)

(provide 'init-git)
