(require-package 'robe)
(add-hook 'ruby-mode-hook 'robe-mode)

(defadvice inf-ruby-console-auto (before activate-rvm-for-robe activate)
  (rvm-activate-corresponding-ruby))

(provide 'init-robe)
