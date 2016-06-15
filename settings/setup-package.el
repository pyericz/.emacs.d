(load "package")
(package-initialize)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)

(setq package-archive-enable-alist '(("melpa" deft magit)))



(defvar pyericz/packages 
  '(auto-complete
    markdown-mode
    lua-mode
    switch-window
    org
    paredit
    mark-multiple
    flycheck
    flycheck-pos-tip
    flycheck-clojure
    flx
    f
    flx-ido
    ido-vertical-mode
    ido-at-point
    ido-ubiquitous
    dired-details
    find-file-in-project
    multiple-cursors
  )
  "Default packages")

(defun pyericz/packages-installed-p ()
  (loop for pkg in pyericz/packages
        when (not (package-installed-p pkg)) do (return nil)
        finally (return t)))

(unless (pyericz/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg pyericz/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))

(provide 'setup-package)