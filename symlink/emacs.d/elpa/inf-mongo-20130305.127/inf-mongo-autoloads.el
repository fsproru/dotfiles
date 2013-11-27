;;; inf-mongo-autoloads.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (inf-mongo-mode switch-to-inf-mongo mongo-send-buffer-and-go
;;;;;;  mongo-send-buffer mongo-send-last-sexp mongo-send-last-sexp-and-go
;;;;;;  mongo-send-region-and-go mongo-send-region inf-mongo inf-mongo-mode-hook
;;;;;;  inf-mongo-command inf-mongo) "inf-mongo" "inf-mongo.el" (21070
;;;;;;  21471 0 0))
;;; Generated autoloads from inf-mongo.el

(let ((loads (get 'inf-mongo 'custom-loads))) (if (member '"inf-mongo" loads) nil (put 'inf-mongo 'custom-loads (cons '"inf-mongo" loads))))

(defvar inf-mongo-command "/usr/local/bin/mongo 127.0.0.1:27017" "\
Default MongoDB shell command used.")

(custom-autoload 'inf-mongo-command "inf-mongo" t)

(defvar inf-mongo-mode-hook nil "\
*Hook for customizing inf-mongo mode.")

(custom-autoload 'inf-mongo-mode-hook "inf-mongo" t)

(autoload 'inf-mongo "inf-mongo" "\
Major mode for interacting with an inferior MongoDB shell (mongo) process.

The following commands are available:
\\{inf-mongo-mode-map}

A MongoDB shell process can be fired up with M-x inf-mongo.

Customisation: Entry to this mode runs the hooks on comint-mode-hook and
inf-mongo-mode-hook (in that order).

\(fn CMD &optional DONT-SWITCH-P)" t nil)

(autoload 'mongo-send-region "inf-mongo" "\
Send the current region to the inferior MongoDB process.

\(fn START END)" t nil)

(autoload 'mongo-send-region-and-go "inf-mongo" "\
Send the current region to the inferior MongoDB process.

\(fn START END)" t nil)

(autoload 'mongo-send-last-sexp-and-go "inf-mongo" "\
Send the previous sexp to the inferior Mongo process.

\(fn)" t nil)

(autoload 'mongo-send-last-sexp "inf-mongo" "\
Send the previous sexp to the inferior MongoDB process.

\(fn)" t nil)

(autoload 'mongo-send-buffer "inf-mongo" "\
Send the buffer to the inferior MongoDB process.

\(fn)" t nil)

(autoload 'mongo-send-buffer-and-go "inf-mongo" "\
Send the buffer to the inferior MongoDB process.

\(fn)" t nil)

(autoload 'switch-to-inf-mongo "inf-mongo" "\
Switch to the MongoDB process buffer.
With argument, position cursor at end of buffer.

\(fn EOB-P)" t nil)

(defvar inf-mongo-mode-map (let ((map (make-sparse-keymap))) (define-key map "" 'mongo-send-last-sexp) map))

(autoload 'inf-mongo-mode "inf-mongo" "\


\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("inf-mongo-pkg.el") (21070 21471 889209
;;;;;;  0))

;;;***

(provide 'inf-mongo-autoloads)
;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; inf-mongo-autoloads.el ends here
