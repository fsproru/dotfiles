;;-------------------------------------------;;
;; This is the first thing that gets loaded. ;;
;; ------------------------------------------;;

;; elpa package manager
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

;; mouse
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
;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(setq mouse-wheel-progressive-speed nil)
(setq mouse-wheel-follow-mouse 't)
(setq scroll-step 1)

;; color theme
(load-theme 'solarized-dark t)

(unless window-system ;; running inside the terminal
  (turn-on-pbcopy)
  ;; makes shift-up work in a terminal
  (define-key input-decode-map "\e[1;2A" [S-up]))

;; start in server mode
(load "server")
(unless (server-running-p) (server-start))

;; Setting up a PATH for GUI emacs
(when (memq window-system '(mac ns))
  (exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-env "EPHRASE"))

;; ruby
(add-hook 'ruby-mode-hook 'flymake-ruby-load)
(add-to-list 'auto-mode-alist '("Rakefile"    . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile"     . ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$"    . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))

;; multi-term
(require 'multi-term)
(setq multi-term-program "/bin/bash")
(global-set-key (kbd "<f6>") 'multi-term) ;; create a new nerminal
(global-set-key (kbd "<f8>") 'multi-term-next) ;; next terminal

;; term-mode
(when (require 'term nil t)
  ;; display unicode chars
  (add-hook 'term-exec-hook
          (function
           (lambda ()
             (set-buffer-process-coding-system 'utf-8-unix 'utf-8-unix))))

  ;; for emacs runnning inside term-mode buffer
  (defun term-send-c-x ()
    (interactive)
    (term-send-raw-string "\C-x"))
  (defun term-send-c-x-c-s ()
    (interactive)
    (funcall 'term-send-c-x)
    (term-send-raw-string "\C-s"))
  (defun term-send-c-x-c-c ()
    (interactive)
    (funcall 'term-send-c-x)
    (term-send-raw-string "\C-c"))

  (setq term-bind-key-alist
        (list (cons "C-c C-c" 'term-interrupt-subjob)
         (cons "C-p" 'previous-line)
         (cons "C-n" 'next-line)
         (cons "M-f" 'term-send-forward-word)
         (cons "M-b" 'term-send-backward-word)
         (cons "M-<left>" 'term-send-backward-word)
         (cons "M-<right>" 'term-send-forward-word)
         (cons "C-c C-j" 'term-line-mode)
         (cons "C-c C-k" 'term-char-mode)
         (cons "<M-backspace>" 'term-send-backward-kill-word)
         (cons "M-d" 'term-send-forward-kill-word)
         (cons "C-r" 'term-send-reverse-search-history)
         (cons "M-p" 'term-send-raw-meta)
         (cons "M-y" 'term-send-raw-meta)
         (cons "s-v" 'term-paste)
         (cons "C-y" 'term-paste)
         (cons "C-x C-s" 'term-send-c-x-c-s)
         (cons "C-x C-c" 'term-send-c-x-c-c)
         )))

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
(global-set-key (kbd "S-s-<right>")   (kbd "S-C-e"))
(global-set-key (kbd "S-s-<left>")    (kbd "S-C-a"))
(global-set-key (kbd "M-s-<down>")    'windmove-down)
(global-set-key (kbd "M-s-<up>")      'windmove-up)
(global-set-key (kbd "M-s-<right>")   'windmove-right)
(global-set-key (kbd "M-s-<left>")    'windmove-left)

;; other mappings
(global-set-key (kbd "C-x C-b") 'ibuffer)
(define-key global-map (kbd "RET") 'newline-and-indent)
(define-key isearch-mode-map (kbd "s-v") 'isearch-yank-kill)

;; stop annoying beeping
(setq ring-bell-function 'ignore)

;; enable ido-mode
(ido-mode t)
(setq ido-ignore-extensions t)
(setq ido-enable-flex-matching t)

;; find file in project
(projectile-global-mode)
(global-set-key (kbd "C-x f") 'projectile-find-file)

;; expand tabs
(setq standard-indent 2)
(setq-default indent-tabs-mode nil)
(setq js-indent-level 2)

;; replace highlighted text by typing
(delete-selection-mode t)

;; nuke whitespaces when writing to a file
(add-hook 'before-save-hook 'whitespace-cleanup)

;; customization
(set-face-attribute 'default nil :height 190)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(completion-ignored-extensions (quote (".o" "~" ".bin" ".lbin" ".so" ".a" ".ln" ".blg" ".bbl" ".elc" ".lof" ".glo" ".idx" ".lot" ".svn/" ".hg/" ".git/" ".bzr/" "CVS/" "_darcs/" "_MTN/" ".fmt" ".tfm" ".class" ".fas" ".lib" ".mem" ".x86f" ".sparcf" ".dfsl" ".pfsl" ".d64fsl" ".p64fsl" ".lx64fsl" ".lx32fsl" ".dx64fsl" ".dx32fsl" ".fx64fsl" ".fx32fsl" ".sx64fsl" ".sx32fsl" ".wx64fsl" ".wx32fsl" ".fasl" ".ufsl" ".fsl" ".dxl" ".lo" ".la" ".gmo" ".mo" ".toc" ".aux" ".cp" ".fn" ".ky" ".pg" ".tp" ".vr" ".cps" ".fns" ".kys" ".pgs" ".tps" ".vrs" ".pyc" ".pyo" "vendor/bundle" "jmeter" ".plugins" "db/migrate")))
 '(display-time-default-load-average nil)
 '(display-time-mode t)
 '(menu-bar-mode nil)
 '(grep-find-ignored-directories (quote ("SCCS" "RCS" "CVS" "MCVS" ".svn" ".git" ".hg" ".bzr" "_MTN" "_darcs" "{arch}" "log" "vendor/bundle" ".idea" "coverage" "jmeter")))
 '(ido-ignore-directories (quote ("\\`CVS/" "\\`\\.\\./" "\\`\\./" "\\`vendor/bundle" "\\`\\.git/")))
 '(rspec-use-rake-flag nil)
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
