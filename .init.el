(message "Soni is powering up... please Be patient, %s!" current-user)
(when (version< emacs-version "24.1")
  (error "Soni requires at least GNU Emacs 24.1, but you're running %s" emacs-version))

