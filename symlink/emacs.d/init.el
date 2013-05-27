;;----------------------------------------;;
;; This is the first thing to get loaded. ;;
;; ---------------------------------------;;

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

;; color theme
(load-theme 'solarized-dark t)

;; Copy and Paste
(defun copy-from-osx ()
(shell-command-to-string "pbpaste"))

(defun paste-to-osx (text &optional push)
(let ((process-connection-type nil))
(let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
(process-send-string proc text)
(process-send-eof proc))))

;; Override defaults to use the mac copy and paste
(setq interprogram-cut-function 'paste-to-osx)
(setq interprogram-paste-function 'copy-from-osx)

;; start in server mode 
(load "server")
(unless (server-running-p) (server-start))

;; tell emacs about homebrew
(add-to-list 'exec-path "/usr/local/bin")

;; multi-term
(require 'multi-term)
(setq multi-term-program "/bin/bash")
(setq multi-term-dedicated-select-after-open-p t)
(when (require 'term nil t) ; only if term can be loaded..
  (global-set-key (kbd "<f8>") 'multi-term-dedicated-toggle)
  (global-set-key (kbd "<f7>") 'multi-term-next)
  (global-set-key (kbd "<f9>") 'multi-term-prev)
  (global-set-key (kbd "<f6>") 'multi-term)  

  (setq term-bind-key-alist
	(list (cons "C-c C-c" 'term-interrupt-subjob)
	 (cons "C-p" 'previous-line)
	 (cons "C-n" 'next-line)
	 (cons "M-f" 'term-send-forward-word)
	 (cons "M-b" 'term-send-backward-word)
	 (cons "C-c C-j" 'term-line-mode)
	 (cons "C-c C-k" 'term-char-mode)
	 (cons "M-DEL" 'term-send-backward-kill-word)
	 (cons "M-d" 'term-send-forward-kill-word)
	 (cons "C-r" 'term-send-reverse-search-history)
	 (cons "M-p" 'term-send-raw-meta)
	 (cons "M-y" 'term-send-raw-meta)
	 (cons "C-y" 'term-paste))))

;; makes shift-up work in a terminal
(define-key input-decode-map "\e[1;2A" [S-up])

;; resizing windows
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; movement keys
(global-set-key (kbd "s-<down>")      (kbd "M->"))
(global-set-key (kbd "s-<up>")        (kbd "M-<"))
(global-set-key (kbd "s-<right>")     (kbd "C-e"))
(global-set-key (kbd "s-<left>")      (kbd "C-a"))
(global-set-key (kbd "s-<backspace>") (kbd "C-a C-k"))

;; stop annoying beeping
(setq ring-bell-function 'ignore)

;; expand tabs
(setq standard-indent 2)
(setq-default indent-tabs-mode nil)

;; chat
(setq jabber-account-list
     '(("at@zestfinance.com"
     (:network-server . "talk.google.com")
     (:connection-type . ssl)
     (:port . 443))))
(add-hook 'jabber-chat-mode-hook 'flyspell-mode)

;; email
(setq gnus-select-method '(nnimap "gmail"
				  (nnimap-address "imap.gmail.com")
				  (nnimap-server-port 993)
				  (nnimap-stream ssl)))
(setq message-send-mail-function 'smtpmail-send-it
      user-mail-address "at@zestfinance.com"
      smtpmail-starttls-credentials '(("smtp.gmail.com" 587 nil nil))
      smtpmail-auth-credentials '(("smtp.gmail.com" 587 "at@zestfinance.com" nil))
      smtpmail-default-smtp-server "smtp.gmail.com"
      smtpmail-smtp-server "smtp.gmail.com"
      smtpmail-smtp-service 587
      smtpmail-local-domain "zestfinance.com"
      smtpmail-debug-info t)
(setq gnus-posting-styles
      '((".*"
	 (name "Alexader Tamoykin")
	 (address "at@zestfinance.com"))))
(add-hook 'message-mode-hook 'flyspell-mode)

;; address book
(require 'google-contacts)
(require 'google-contacts-gnus)
(require 'google-contacts-message)

;; customization
(set-face-attribute 'default nil :height 190)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(display-time-mode t)
 '(grep-find-ignored-directories (quote ("SCCS" "RCS" "CVS" "MCVS" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs" "{arch}" "log" "vendor/bundle" ".idea" "coverage" "jmeter")))
 '(jabber-alert-presence-hooks nil)
 '(jabber-auto-reconnect t)
 '(password-cache-expiry 604800)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
