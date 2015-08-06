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
    "Send C-x C-x straight to the terminal"
    (interactive)
    (funcall 'term-send-c-x)
    (term-send-raw-string "\C-c"))
  (defun term-send-meta-dot ()
    "Previous input parameter in the terminal"
    (interactive)
    (term-send-raw-string "\e."))

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
         (cons "M-<DEL>" 'term-send-backward-kill-word)
         (cons "M-d" 'term-send-forward-kill-word)
         (cons "C-r" 'term-send-reverse-search-history)
         (cons "M-p" 'term-send-raw-meta)
         (cons "M-y" 'term-send-raw-meta)
         (cons "s-v" 'term-paste)
         (cons "C-y" 'term-paste)
         (cons "C-x C-s" 'term-send-c-x-c-s)
         (cons "C-x C-c" 'term-send-c-x-c-c)
         (cons "<ESC>." 'term-send-meta-dot))))
