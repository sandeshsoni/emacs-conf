(require 'whitespace)
(setq whitespace-line-column 80)
 ;; limit line length
(setq whitespace-style '(face lines-tail))

(set-face-attribute
'whitespace-space nil
:background "cornsilk"
:foreground "gray20"
)

(set-face-attribute
'whitespace-line nil
:background "cornsilk"
:foreground "gray20"
)

(add-hook 'prog-mode-hook 'whitespace-mode)

(setq inhibit-splash-screen t)
(setq inhibit-startup-message t)

(provide 'init-coding-style)
