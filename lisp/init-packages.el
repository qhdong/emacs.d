;;; init-packages --- Initial external package

;;; Commentary:
;; 

;;; Code:

(use-package all-the-icons
  :when (display-graphic-p))

(use-package benchmark-init
  :init (benchmark-init/activate)
  :hook (after-init . benchmark-init/deactivate))

(use-package which-key
  :defer nil
  :diminish
  :init (which-key-mode))

(use-package crux)

(use-package counsel)

(use-package ivy
  :defer 1
  :demand
  :hook (after-init . ivy-mode)
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers t
	enable-recursive-minibuffers t
	ivy-count-format "(%d/%d) "
	ivy-re-builders-alist
	'((read-file-name-internal . ivy--regex-fuzzy)
	  (t . ivy--regex-plus))))


(use-package company
	     :diminish
	     :defines (company-dabbrev-ignore-case company-dabbrev-downcase)
	     :init (add-hook 'after-init-hook 'global-company-mode)
	     :config
	     (setq company-minimum-prefix-length 1
		   company-show-quick-access t))

(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap
  (setq lsp-keymap-prefix "C-c l")
  :hook ((python-mode . lsp)
	 (cc-mode . lsp)
	 (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

(use-package solarized-theme
  :init (load-theme 'solarized-light t))

(provide 'init-packages)

;;; init-packages.el ends here
