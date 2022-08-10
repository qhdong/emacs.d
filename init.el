(add-to-list 'load-path
	     (expand-file-name (concat user-emacs-directory "lisp")))

(require 'init-defaults)
(require 'init-elpa)
(require 'init-packages)
(require 'init-builtins)
(require 'init-ui)

;; load custom file at last
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))
