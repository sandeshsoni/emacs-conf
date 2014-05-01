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

;;----------------------------------------------------------------------------
;; Handier way to add modes to auto-mode-alist
;;----------------------------------------------------------------------------
;; (defun add-auto-mode (mode &rest patterns)
;;   "Add entries to `auto-mode-alist' to use `MODE' for all given file `PATTERNS'."
;;   (dolist (pattern patterns)
;;     (add-to-list 'auto-mode-alist (cons pattern mode))))


(require 'init-package)    ;; Machinery for installing required packages
(require 'init-ido)
(require 'init-flymake)
(require 'init-robe)
(require 'init-projectile)



