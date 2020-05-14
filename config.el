;; Some mappings I miss from spacemacs
(map! :leader
      "w /" #'evil-window-vsplit
      "f t" #'treemacs
      "f a" #'treemacs-add-and-display-current-project
      "/" #'+ivy/project-search)

(map! :map evil-insert-state-map
      "<M-right>" #'org-metaright
      "<M-left>" #'org-metaleft)

;; Spacehammer emacs functions

(load! "~/.hammerspoon/spacehammer.el")

;; Set up some modes for stuff

(add-load-path! "~/pkg/emacs/fennel/")
(autoload 'fennel-mode "~/pkg/emacs/fennel/fennel-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.fnl\\'" . fennel-mode))

;; aligns annotation to the right hand side
(setq company-tooltip-align-annotations t)

;; Register bindings
(map! :leader
      "r <RET>" #'point-to-register
      "r g" #'jump-to-register
      "r y" #'copy-to-register
      "r Y" #'append-to-register
      "r p" #'insert-register
      "r w" #'window-configuration-to-register
      "r W" #'frameset-to-register)

(map! :leader
      "k w" #'sp-wrap-round
      "k W" #'sp-unwrap-sexp
      "k {" #'sp-wrap-curly
      "k s" #'sp-forward-slurp-sexp
      "k S" #'sp-backward-slurp-sexp
      "k d" #'sp-kill-sexp
      "k t" #'sp-transpose-sexp
      "k y" #'sp-copy-sexp)

(map! :leader
      "," #'doom/find-file-in-private-config)
