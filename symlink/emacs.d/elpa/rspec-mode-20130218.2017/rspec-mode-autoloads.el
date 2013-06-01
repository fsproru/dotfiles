;;; rspec-mode-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (rspec-buffer-is-spec-p rspec-verifiable-mode rspec-mode)
;;;;;;  "rspec-mode" "rspec-mode.el" (20902 29904 0 0))
;;; Generated autoloads from rspec-mode.el

(autoload 'rspec-mode "rspec-mode" "\
Minor mode for RSpec files

\(fn &optional ARG)" t nil)

(autoload 'rspec-verifiable-mode "rspec-mode" "\
Minor mode for Ruby files that have specs

\(fn &optional ARG)" t nil)

(autoload 'rspec-buffer-is-spec-p "rspec-mode" "\
Returns true if the current buffer is a spec

\(fn)" nil nil)

(add-hook 'ruby-mode-hook (lambda nil (if (rspec-buffer-is-spec-p) (rspec-mode) (rspec-verifiable-mode))))

(add-hook 'rails-minor-mode-hook 'rspec-verifiable-mode)

;;;***

;;;### (autoloads nil nil ("rspec-mode-pkg.el") (20902 29904 911047
;;;;;;  0))

;;;***

(provide 'rspec-mode-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; rspec-mode-autoloads.el ends here
