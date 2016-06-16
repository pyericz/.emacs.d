;; Smart M-x
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; switch window
(global-set-key (kbd "C-x o") 'switch-window)

;; Find file in project
(global-set-key (kbd "C-x p") 'find-file-in-project)

;; Multiple cursors
(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;; Jump to a definition in the current file. 
(global-set-key (kbd "C-x C-i") 'imenu-anywhere)

;; File finding
(global-set-key (kbd "C-x f") 'recentf-ido-find-file)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Browse the kill ring
(global-set-key (kbd "C-x C-y") 'browse-kill-ring)

;; Trigger auto completion
(global-set-key (kbd "C-.") 'auto-complete)
(global-set-key (kbd "C-,") 'ac-complete-clang)

(provide 'key-bindings)