(add-hook 'ruby-mode-hook 'flymake-ruby-load)
(add-to-list 'auto-mode-alist '("Deliverfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Podfile"     . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile"    . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile"     . ruby-mode))
(add-to-list 'auto-mode-alist '("Vagrantfile" . ruby-mode))
(add-to-list 'auto-mode-alist '("Fastfile"    . ruby-mode))
(add-to-list 'auto-mode-alist '("Appfile"     . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake$"    . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$" . ruby-mode))

;; TODO: Try out js-mode when emacs 25 comes out
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(add-hook 'before-save-hook 'whitespace-cleanup)
(add-hook 'markdown-mode-hook 'flyspell-mode)
(add-hook 'prog-mode-hook 'yas-minor-mode-on)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)

(require 'pbcopy)
(turn-on-pbcopy)
