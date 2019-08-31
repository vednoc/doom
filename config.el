;;; -*- lexical-binding: t; -*-

(global-git-gutter-mode t)
(global-prettify-symbols-mode)


(setq display-line-numbers-type 'relative

      window-divider-default-bottom-width 0

      git-gutter:update-interval 2
      git-gutter:window-width -1

      doom-modeline-major-mode-icon 1

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
  (setq highlight-indent-guides-responsive 'top
        highlight-indent-guides-character ?\¦))

(after! doom-modeline
  (setq doom-modeline-buffer-file-name-style 'relative-to-project))

;; Org-mode configs.
(after! org
  (setq
    ;; Log time when marked as done.
    org-log-done 'time
    org-ellipsis " ..."
    org-bullets-bullet-list '("◉" "○")
    org-directory "~/doc/org"))

;; Fix hardcoded tab-width value in Jade mode; found in Stylus files as well.
(setq sws-tab-width 4)

;; https://github.com/hlissner/emacs-solaire-mode/issues/21
(after! treemacs
  (advice-add '+treemacs--init :after #'balance-windows))

(add-hook 'crystal-mode-hook
          (lambda () (add-hook 'before-save-hook #'crystal-tool-format)))

