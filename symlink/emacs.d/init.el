;;-------------------------------------------;;
;; This is the first thing that gets loaded. ;;
;; ------------------------------------------;;


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq at-emacs-dir (file-name-directory load-file-name))

(require 'cask "/usr/local/share/emacs/site-lisp/cask/cask.el")
(cask-initialize)

(init-loader-load)

;; start in server mode
(load "server")
(unless (server-running-p) (server-start))

;; stop annoying beeping
(setq ring-bell-function 'ignore)

;; expand tabs
(setq standard-indent 2)
(setq-default indent-tabs-mode nil)
(setq js-indent-level 2)

;; customizing customization
(setq custom-file (expand-file-name "customization.el" at-emacs-dir))
(load custom-file)

;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist
            `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms
            `((".*" ,temporary-file-directory t)))
