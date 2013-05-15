;;
;; This is the first thing to get loaded.
;; 

;; elpa package manager
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

;; enable mouse
(require 'mouse)
(xterm-mouse-mode t)
(defun track-mouse (e))
(setq mouse-sel-mode t)
(global-set-key [mouse-4] '(lambda ()
                            (interactive)
                            (scroll-down 1)))
(global-set-key [mouse-5] '(lambda ()
                            (interactive)
                            (scroll-up 1)))

;; start in server mode 
(load "server")
(unless (server-running-p) (server-start))

;; color theme
(load-theme 'solarized-dark t)

;; makes shift-up work in a terminal
(define-key input-decode-map "\e[1;2A" [S-up])
