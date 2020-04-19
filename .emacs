;; -*- mode: elisp -*-

;;
;;
;;
;;
;;
;; Package-Manager (Sources)
;;(add-to-list 'package-archives
;;             '("melpa-stable" . "https://stable.melpa.org/packages/") t)

;; temp. Fix für 26.2
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

;; Disable the splash screen (to enable it agin, replace the t with 0)
(setq inhibit-splash-screen t)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; Enable transient mark mode
(transient-mark-mode 1)

;; CUSTOM

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files
   (quote
    ("~/ncloud/org/htasks.org" "~/ncloud/org/inbox.org" "~/ncloud/org/atasks.org" "~/ncloud/org/ziele.org" "~/ncloud/org/tickler.org")))
 '(org-default-priority 67)
 '(org-highest-priority 65)
 '(org-lowest-priority 68)
 '(org-priority-faces
   (quote
    ((65 :inherit org-priority :weight semibold)
     (66 :inherit org-priority :weight normal)
     (67 :inherit org-priority :weight light)
     (68 :inherit org-priority :weight ultra-light))))
 '(package-selected-packages
   (quote
    (which-key use-package moody org-bullets ztree async csv-mode darkroom dts-mode json-mode minimap soap-client spinner transcribe yasnippet js2-mode))))

;; FONTS
;; -----
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "IBM Plex Mono" :foundry "outline" :slant normal :weight light :height 148 :width normal))))
 '(fixed-pitch ((t (:family "IBM Plex Mono" :foundry "outline" :slant normal :weight light :height 148 :width normal))))
 '(match ((t (:background "MistyRose1"))))
 '(org-block-begin-line ((t (:inherit org-meta-line :foreground "gray" :height 0.5))))
 '(org-date ((t (:inherit fixed-pitch :foreground "Purple"))))
 '(org-document-title ((t (:inherit default :weight bold :foreground "black" :height 1.3 :underline nil))))
 '(org-done ((t (:inherit org-todo :foreground "honeydew2"))))
 '(org-ellipsis ((t (:foreground "turquoise1" :underline nil :height 0.65))))
 '(org-level-1 ((t (:family "IBM Plex Serif" :foundry "outline" :slant normal :weight light :foreground "dark gray" :height 230))))
 '(org-level-2 ((t (:inherit org-level-1 :foreground "dark cyan" :height 0.9))))
 '(org-level-3 ((t (:inherit org-level-1 :foreground "DeepSkyBlue4" :height 0.8))))
 '(org-level-4 ((t (:inherit org-level-1 :foreground "midnight blue" :height 0.75))))
 '(org-level-5 ((t (:inherit org-level-4))))
 '(org-level-6 ((t (:inherit org-level-4))))
 '(org-level-7 ((t (:inherit org-level-4))))
 '(org-level-8 ((t (:inherit org-level-4))))
 '(org-list-dt ((t (:foreground "#440000"))))
 '(org-priority ((t (:foreground "IndianRed4" :inherit font-lock-keyword-face :weight semi-bold))))
 '(org-tag ((t (:foreground "dark gray" :weight light :height 0.5))))
 '(org-todo ((t (:foreground "gray34" :weight semi-bold :family "IBM Plex Sans Condensed"))))
 '(secondary-selection ((t (:background "misty rose"))))
 '(shadow ((t (:foreground "honeydew2"))))
 '(variable-pitch ((t (:family "IBM Plex Sans" :height 152 :weight light)))))


;; LOAD Configuration.org
(require 'org)
(org-babel-load-file "~/.emacs.d/configuration.org")
