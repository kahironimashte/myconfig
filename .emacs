(require 'org)
(org-babel-load-file "~/.emacs.d/configuration.org")


;; CUSTOM from here

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "red3" "ForestGreen" "yellow3" "blue" "magenta3" "DeepSkyBlue" "gray50"])
 '(custom-enabled-themes (quote (whiteboard)))
 '(moody-mode-line-height 28)
 '(org-agenda-files
   (quote
    ("~/ncloud/org/atasks.org" "~/ncloud/org/checklisten.org" "~/ncloud/org/tickler.org" "~/ncloud/org/htasks.org" "~/ncloud/org/ziele.org" "~/ncloud/org/inbox.org" "~/ncloud/org/prsn/abschluss.org")))
 '(org-default-priority 67)
 '(org-highest-priority 65)
 '(org-lowest-priority 68)
 '(org-priority-faces
   (quote
    ((65 :inherit org-priority :weight semibold)
     (66 :inherit org-priority :weight normal)
     (67 :inherit org-priority :weight light)
     (68 :inherit org-priority :weight ultra-light))))
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-habit org-info org-inlinetask org-irc org-mhe org-rmail org-w3m)))
 '(package-selected-packages (quote (org-super-agenda json-mode js2-mode))))

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
 '(org-level-1 ((t (:family "IBM Plex Serif Text" :foundry "outline" :slant normal :weight normal :foreground "dark gray" :height 220))))
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
 '(variable-pitch ((t (:family "IBM Plex Sans Text"  :height 152 :weight normal))))) ;; 152

