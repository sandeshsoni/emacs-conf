(defvar current-user
  (getenv
   (if (equal system-type 'windows-nt) "USERNAME" "USER")))

(message "Soni is powering up... please Be patient, %s!" current-user)
(when (version< emacs-version "24.1")
  (error "Soni requires at least GNU Emacs 24.1, but you're running %s" emacs-version))

;; Always load newest byte code
(setq load-prefer-newer t)

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))
;;(require 'auto-install)

(require 'init-package)    ;; Machinery for installing required packages
(require 'init-ido)
(require 'init-flymake)
(require 'init-robe)
(require 'init-projectile)
(require 'init-recentf)
(require 'init-editing-utils)

(require 'init-coding-style)
(require 'init-tabbar)
(require 'init-themes)

(require 'init-css)
(require-package 'htmlize)

(require 'init-custom-bindings)
(require 'init-git)

(provide 'init)
