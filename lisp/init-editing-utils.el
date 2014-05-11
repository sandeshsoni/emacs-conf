(require-package 'guide-key)
(setq guide-key/guide-key-sequence '("C-x r" "C-c r" "C-c ;" "C-c ; f" "C-c ' f" "C-x n"))
(guide-key-mode 1)  ; Enable guide-key-mode

;;----------------------------------------------------------------------------
;; Shift lines up and down with M-up and M-down. When paredit is enabled,
;; it will use those keybindings. For this reason, you might prefer to
;; use M-S-up and M-S-down, which will work even in lisp modes.
;;----------------------------------------------------------------------------
(require-package 'move-text)
(global-set-key [M-up] 'move-text-up)
(global-set-key [M-down] 'move-text-down)
(global-set-key [M-S-up] 'move-text-up)
(global-set-key [M-S-down] 'move-text-down)

(provide 'init-editing-utils)
