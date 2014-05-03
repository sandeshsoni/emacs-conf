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

(provide 'init-coding-style)
