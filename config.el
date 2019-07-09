;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

(global-git-gutter-mode t)

(setq
  display-line-numbers-type nil

  git-gutter:update-interval 2
  git-gutter:window-width -1


  doom-theme 'doom-gruvbox-dark-hard
  doom-font (font-spec :family "Iosevka Light" :size 14)
  doom-big-font (font-spec :family "Iosevka Light" :size 20)
  doom-unicode-font(font-spec :family "Dejavu Sans Mono" :size 14)
  doom-variable-pitch-font(font-spec :family "Inter"))

;; Word wrap.
(add-hook 'prog-mode-hook #'visual-line-mode t)

;; Stylus configs.
(add-hook 'stylus-mode-hook (lambda ()
                              (hl-todo-mode t)
                              (visual-line-mode t)
                              (rainbow-delimiters-mode t)
                              (highlight-indent-guides-mode t)))

;; Character used to render indent guides.
(after! highlight-indent-guides
  (setq highlight-indent-guides-character ?\┊))

;; Org-mode configs.
(after! org
  (setq
    ;; Log time when marked as done.
    org-log-done 'time
  ))

