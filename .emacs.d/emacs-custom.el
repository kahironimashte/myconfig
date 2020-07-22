
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
    ("~/ncloud/org/atasks.org" "~/ncloud/org/prsn/abschluss.org" "~/ncloud/org/checklisten.org" "~/ncloud/org/calendar.org" "~/ncloud/org/htasks.org" "~/ncloud/org/ziele.org" "~/ncloud/org/inbox.org")))
 '(org-default-priority 67)
 '(org-highest-priority 65)
 '(org-lowest-priority 68)
 '(org-modules
   (quote
    (org-docview org-habit org-info org-inlinetask org-mhe org-w3m)))
 '(org-priority-faces
   (quote
    ((65 :inherit org-priority :family "IBM Plex Mono" :weight semibold)
     (66 :inherit org-priority :family "IBM Plex Mono" :weight normal)
     (67 :inherit org-priority :family "IBM Plex Mono" :weight light)
     (68 :inherit org-priority :family "IBM Plex Mono" :weight extralight))))
 '(package-selected-packages
   (quote
    (org nov smartparens org-bookmark-heading org-recur yafolding steam ztree ac-alchemist which-key moody org-bullets use-package yankpad hydra ryo-modal org-super-agenda json-mode js2-mode))))
;; FONTS
;; -----
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "IBM Plex Mono" :foundry "outline" :slant normal :weight light :height 148 :width normal))))
 '(fixed-pitch ((t (:family "IBM Plex Mono" :foundry "outline" :slant normal :weight light :height 148 :width normal))))
 '(font-lock-warning-face ((t (:foreground "maroon"))))
 '(match ((t (:background "MistyRose1"))))
 '(org-agenda-structure ((t (:foreground "DeepSkyBlue4"))))
 '(org-archived ((t (:inherit shadow :foreground "honeydew3" :height 0.8))))
 '(org-block ((t (:inherit shadow :foreground "dim gray"))))
 '(org-block-begin-line ((t (:inherit org-meta-line :foreground "gray" :height 0.5))))
 '(org-date ((t (:inherit fixed-pitch :foreground "Purple" :height 0.8))))
 '(org-document-title ((t (:inherit default :weight bold :foreground "black" :underline t))))
 '(org-done ((t (:inherit org-todo :foreground "honeydew2"))))
 '(org-drawer ((t (:inherit org-special-keyword))))
 '(org-ellipsis ((t (:foreground "turquoise1" :underline nil :height 0.65))))
 '(org-level-1 ((t (:family "IBM Plex Serif Text" :foundry "outline" :slant normal :weight normal :foreground "dark gray" :height 220))))
 '(org-level-2 ((t (:inherit org-level-1 :foreground "dark cyan" :height 0.9))))
 '(org-level-3 ((t (:inherit org-level-1 :foreground "DeepSkyBlue4" :height 0.8))))
 '(org-level-4 ((t (:inherit org-level-1 :foreground "midnight blue" :height 0.75))))
 '(org-level-5 ((t (:inherit org-level-4))))
 '(org-level-6 ((t (:inherit org-level-4))))
 '(org-level-7 ((t (:inherit org-level-4))))
 '(org-level-8 ((t (:inherit org-level-4))))
 '(org-link ((t (:inherit fixed-pitch :foreground "SlateBlue3"))))
 '(org-list-dt ((t (:foreground "gray30" :slant italic))))
 '(org-priority ((t (:height 1.1 :foreground "IndianRed4" :inherit font-lock-keyword-face :weight semi-bold))))
 '(org-property-value ((t (:height 0.8))) t)
 '(org-recur ((t (:inherit org-tag :height 1.6))))
 '(org-scheduled ((t (:inherit org-scheduled-today))))
 '(org-scheduled-previously ((t (:foreground "IndianRed3"))))
 '(org-scheduled-today ((t (:foreground "SeaGreen4"))))
 '(org-special-keyword ((t (:inherit fixed-pitch :foreground "dim gray" :height 0.8))))
 '(org-tag ((t (:foreground "dark gray" :weight light :height 0.5))))
 '(org-time-grid ((t (:foreground "PeachPuff4"))))
 '(org-todo ((t (:foreground "gray34" :weight semi-bold :family "IBM Plex Sans Condensed"))))
 '(org-verbatim ((t (:inherit shadow :foreground "honeydew4"))))
 '(secondary-selection ((t (:background "misty rose"))))
 '(shadow ((t (:foreground "honeydew2"))))
 '(variable-pitch ((t (:family "IBM Plex Sans Text" :height 152 :weight normal)))))
