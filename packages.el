;; -*- no-byte-compile: t; -*-
;;; ~/.doom.d/packages.el

;;; Examples:
;; (package! some-package)
;; (package! another-package :recipe (:fetcher github :repo "username/repo"))
;; (package! builtin-package :disable t)

;;; Fix stylus-mode missing sws-mode.
(package! sws-mode :recipe (:host github :repo "brianc/jade-mode"))
