(require 'package) ;; You might already have this line
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize) ;; You might already have this line

(defvar pyericz/packages 
  '(auto-complete
    auto-complete-clang
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
    helm-core
    imenu-anywhere
    yasnippet
    guide-key
    yafolding
    icicles
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
