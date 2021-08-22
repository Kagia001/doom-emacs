;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

(setq user-full-name "Karl Giese"
      user-mail-address "karl@giese.no")


(setq doom-font "Fira Code 13")

(setq doom-theme 'gruvbox-light-soft)

(setq org-directory "~/org/")

(setq display-line-numbers-type t)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys

(use-package! python-black
    :hook (python-mode . python-black-on-save-mode))

(setq +lsp-company-backends '(:separate company-yasnippet company-capf))

(setq yas-snippet-dirs '("~/.config/doom/snippets"))

(load! "bindings")
