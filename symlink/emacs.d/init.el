;;-------------------------------------------;;
;; This is the first thing that gets loaded. ;;
;; ------------------------------------------;;

(setq at-emacs-dir (file-name-directory load-file-name))

(require 'cask "~/.cask/cask.el")
(cask-initialize)
(require 'pallet)

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
