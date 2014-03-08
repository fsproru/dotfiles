;; movement
(global-set-key (kbd "s-<down>")      (kbd "M->"))
(global-set-key (kbd "s-<up>")        (kbd "M-<"))
(global-set-key (kbd "s-<right>")     (kbd "C-e"))
(global-set-key (kbd "s-<left>")      (kbd "C-a"))
(global-set-key (kbd "s-<DEL>")       (kbd "C-a C-k"))
(global-set-key (kbd "S-s-<right>")   (kbd "S-C-e"))
(global-set-key (kbd "S-s-<left>")    (kbd "S-C-a"))
(define-key isearch-mode-map (kbd "s-v") 'isearch-yank-kill)
(define-key global-map (kbd "RET") 'newline-and-indent)

;; file navigation
(projectile-global-mode)
(global-set-key (kbd "C-x f") 'projectile-find-file)
(global-set-key (kbd "C-x C-b") 'ibuffer)
