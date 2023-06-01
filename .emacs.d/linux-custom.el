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
 '(custom-enabled-themes '(whiteboard))
 '(org-agenda-files
   '("~/org/prsn/karriere.org" "~/org/htasks.org" "~/org/atasks.org" "~/org/calendar.org"))
 '(org-agenda-sorting-strategy
   '((agenda time-up habit-down priority-down category-keep)
     (todo priority-down category-keep)
     (tags priority-down category-keep)
     (search category-keep)))
 '(org-default-priority 67)
 '(org-habit-completed-glyph 43)
 '(org-habit-show-done-always-green t)
 '(org-habit-today-glyph 9728)
 '(org-highest-priority 65)
 '(org-lowest-priority 68)
 '(org-modules
   '(ol-bbdb ol-bibtex ol-docview ol-eww ol-gnus org-habit ol-info ol-irc ol-mhe ol-rmail ol-w3m))
 '(org-priority-default 67)
 '(org-priority-faces
   '((65 :inherit org-priority :family "IBM Plex Mono" :weight semibold)
     (66 :inherit org-priority :family "IBM Plex Mono" :weight normal)
     (67 :inherit org-priority :family "IBM Plex Mono" :weight light)
     (68 :inherit org-priority :family "IBM Plex Mono" :weight extralight)))
 '(org-priority-highest 65)
 '(org-priority-lowest 68)
 '(org-safe-remote-resources
   '("\\`https://fniessen\\.github\\.io/org-html-themes/org/theme-readtheorg\\.setup\\'"))
 '(package-selected-packages
   '(org-appear org-sticky-header rainbow-delimiters magit ido-completing-read+ org-remark olivetti unfill ess org-clock-convenience which-key imenu-anywhere anki-editor minions yaml-mode steam yasnippet ztree smex ryo-modal org-recur org-bullets nov modus-themes json-mode js2-mode ido-yes-or-no el-patch)))
;; FONTS
;; -----
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "IBM Plex Mono" :foundry "outline" :slant normal :weight light :height 148 :width normal))))
 '(fixed-pitch ((t (:family "IBM Plex Mono" :foundry "outline" :slant normal :weight light :height 148 :width normal))))
 '(fixed-pitch-serif ((t (:family "Nimbus Mono L"))))
 '(font-lock-warning-face ((t (:foreground "maroon"))))
 '(match ((t (:background "MistyRose1"))))
 '(org-agenda-structure ((t (:foreground "DeepSkyBlue4"))))
 '(org-archived ((t (:inherit shadow :foreground "honeydew3" :height 0.8))))
 '(org-block ((t (:inherit shadow :foreground "dim gray"))))
 '(org-block-begin-line ((t (:inherit org-meta-line :foreground "gray" :height 0.5))))
 '(org-column ((t (:inherit fixed-pitch :background "#f0f0f0"))))
 '(org-column-title ((t (:inherit fixed-pitch :background "#f0f0f0" :underline t :weight bold))))
 '(org-date ((t (:inherit fixed-pitch :foreground "Purple"))))
 '(org-document-title ((t (:inherit default :weight bold :foreground "black" :underline t))))
 '(org-done ((t (:inherit org-todo :foreground "honeydew2"))))
 '(org-drawer ((t (:inherit org-special-keyword))))
 '(org-ellipsis ((t (:foreground "turquoise1" :underline nil :height 0.65))))
 '(org-habit-alert-face ((t (:background "coral"))))
 '(org-habit-alert-future-face ((t (:background "navajo white"))))
 '(org-habit-clear-face ((t (:background "mint cream"))))
 '(org-habit-clear-future-face ((t (:background "mint cream"))))
 '(org-habit-overdue-face ((t (:background "gray"))))
 '(org-habit-overdue-future-face ((t (:background "gainsboro"))))
 '(org-habit-ready-face ((t (:background "lime green"))))
 '(org-habit-ready-future-face ((t (:background "PaleGreen2"))))
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
 '(org-priority ((t (:height 0.8 :foreground "IndianRed4" :inherit font-lock-keyword-face :weight semi-bold))))
 '(org-property-value ((t (:height 0.8))) t)
 '(org-recur ((t (:inherit org-tag :height 1.6))))
 '(org-scheduled ((t (:inherit org-scheduled-today))))
 '(org-scheduled-previously ((t (:foreground "IndianRed3"))))
 '(org-scheduled-today ((t (:foreground "SeaGreen4"))))
 '(org-special-keyword ((t (:inherit fixed-pitch :foreground "dim gray" :height 0.8))))
 '(org-tag ((t (:foreground "dark gray" :height 0.8 :family "IBM Plex Serif Light"))))
 '(org-time-grid ((t (:foreground "PeachPuff4"))))
 '(org-todo ((t (:foreground "gray34" :weight semi-bold :family "IBM Plex Sans Condensed" :height 0.8))))
 '(org-verbatim ((t (:inherit shadow :foreground "honeydew4"))))
 '(secondary-selection ((t (:background "misty rose"))))
 '(shadow ((t (:foreground "honeydew2"))))
 '(variable-pitch ((t (:family "IBM Plex Sans Text" :height 152 :weight normal)))))
