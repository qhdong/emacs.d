;;; init-defaults --- Initial emacs default configs

(prefer-coding-system 'utf-8)

(setq auto-save-default nil
      auto-window-vscroll nil
      inhibit-startup-screen t
      make-backup-files nil)

(defalias 'yes-or-no-p 'y-or-n-p)

(provide 'init-defaults)
;;; init-defaults.el ends here
