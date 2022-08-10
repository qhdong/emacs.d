;;; init-builtins --- Init builtin packages
;;; Commentary:

;;; Flymake
;;; Code:
(add-hook 'prog-mode-hook 'flymake-mode)
(add-hook 'prog-mode-hook 'hl-line-mode)

;; Electric-Pair
(add-hook 'after-init-hook 'electric-indent-mode)
(add-hook 'prog-mode-hook 'electric-pair-mode)
(add-hook 'prog-mode-hook 'electric-layout-mode)

;; Line number
(use-package display-line-numbers
  :if (> emacs-major-version 26)
  :hook (prog-mode . display-line-numbers-mode))

(provide 'init-builtins)
;;; init-builtins.el ends here
