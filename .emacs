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
 '(package-selected-packages
   (quote
    (use-package moody org-bullets ztree async csv-mode darkroom dts-mode json-mode minimap soap-client spinner transcribe yasnippet js2-mode))))

;; FONTS
;; -----
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Monospace" :foundry "outline" :slant normal :weight normal :height 158 :width normal))))
 '(fixed-pitch ((t (:family "Monospace" :foundry "outline" :slant normal :weight normal :height 171 :width normal))))
 '(org-block-begin-line ((t (:inherit org-meta-line :foreground "gray" :height 0.5))))
 '(org-document-title ((t (:inherit default :weight bold :foreground "black" :height 1.3 :underline nil))))
 '(org-ellipsis ((t (:foreground "turquoise1" :underline nil))))
 '(org-level-1 ((t (:inherit default :foreground "dark gray" :height 1.5))))
 '(org-level-2 ((t (:inherit default :foreground "dark cyan" :height 1.3))))
 '(org-level-3 ((t (:inherit default :foreground "RoyalBlue3"))))
 '(org-level-4 ((t (:inherit default :foreground "blue violet"))))
 '(org-level-5 ((t (:inherit default :foreground "black"))))
 '(org-level-6 ((t (:inherit default :foreground "black"))))
 '(org-level-7 ((t (:inherit default :foreground "black"))))
 '(org-level-8 ((t (:inherit default :foreground "black"))))
 '(org-list-dt ((t (:foreground "#440000"))))
 '(org-tag ((t (:foreground "dim gray" :weight normal :height 0.6))))
 '(variable-pitch ((t (:family "Liberation Sans" :height 171 :weight normal)))))


;; LOAD Configuration.org
(require 'org)
(org-babel-load-file "~/.emacs.d/configuration.org")
