;;; ~/.doom.d/config.el -*- lexical-binding: t; -*-

(global-visual-line-mode t)
(global-git-gutter-mode t)

(setq
  display-line-numbers-type nil

  git-gutter:update-interval 2
  git-gutter:window-width -1


  doom-theme 'doom-sourcerer
  doom-font (font-spec :family "Iosevka Light" :size 14)
  doom-big-font (font-spec :family "Iosevka Light" :size 20)
  doom-unicode-font(font-spec :family "Dejavu Sans Mono" :size 14)
  doom-variable-pitch-font(font-spec :family "Inter"))
