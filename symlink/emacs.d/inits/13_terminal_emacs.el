(unless window-system
  (turn-on-pbcopy)
  (define-key input-decode-map "\e[1;2A" [S-up]))
