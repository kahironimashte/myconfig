;;  ######  ##     ##  ######  ########  #######  ##     ## #### ######## ######## 
;; ##    ## ##     ## ##    ##    ##    ##     ## ###   ###  ##       ##  ##       
;; ##       ##     ## ##          ##    ##     ## #### ####  ##      ##   ##       
;; ##       ##     ##  ######     ##    ##     ## ## ### ##  ##     ##    ######   
;; ##       ##     ##       ##    ##    ##     ## ##     ##  ##    ##     ##       
;; ##    ## ##     ## ##    ##    ##    ##     ## ##     ##  ##   ##      ##       
;;  ######   #######   ######     ##     #######  ##     ## #### ######## ######## 
;; Alles, was über das customize-Feature von emas configuriert wurde (M-x customize) - Schriftarten sind Windows-spezifisch.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(whiteboard))
 '(font-use-system-font t)
 '(org-agenda-files
   '("c:/org/regularien.org" "c:/org/htasks.org" "c:/org/calendar.org" "c:/org/atasks.org"))
 '(org-agenda-sorting-strategy
   '((agenda time-up priority-down category-keep)
     (todo priority-down category-keep)
     (tags priority-down category-keep)
     (search category-keep)))
 '(org-default-priority 67)
 '(org-habit-completed-glyph 43)
 '(org-habit-show-done-always-green t)
 '(org-habit-today-glyph 9728)
 '(org-hide-leading-stars t)
 '(org-highest-priority 65)
 '(org-lowest-priority 68)
 '(org-modules
   '(ol-docview org-habit ol-info org-inlinetask ol-mhe ol-w3m))
 '(org-priority-default 67)
 '(org-priority-faces
   '((65 :inherit
	 '(org-priority default)
	 :weight bold)
     (66 :inherit
	 '(org-priority default)
	 :family "IBM Plex Mono SemiBold" :weight semibold)
     (67 :inherit
	 '(org-priority default)
	 :family "IBM Plex Mono" :weight normal)
     (68 :inherit
	 '(org-priority default)
	 :family "IBM Plex Mono Light" :weight light)))
 '(org-priority-highest 65)
 '(org-priority-lowest 68)
 '(org-startup-align-all-tables t)
 '(org-tags-column 0)
 '(package-selected-packages
   '(esup anki-editor minions imenu-anywhere yaml-mode yasnippet which-key use-package smartparens ryo-modal org-recur org-caldav org-bullets org-bookmark-heading nov ido-completing-read+)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "IBM Plex Mono Text" :foundry "outline" :slant normal :weight normal :height 148 :width normal :antialias subpixel))))
 '(fixed-pitch ((t (:foreground "gray44" :slant normal :weight normal :height 120 :width normal :foundry "outline" :family "IBM Plex Mono Text"))))
 '(font-lock-warning-face ((t (:foreground "maroon"))))
 '(match ((t (:background "MistyRose1"))))
 '(monospace ((t (:foundry "outline" :family "IBM Plex Mono Text"))))
 '(org-agenda-calendar-event ((t (:inherit default :foreground "dark green"))))
 '(org-agenda-current-time ((t (:inherit org-time-grid :foreground "DeepSkyBlue4" :weight semi-bold))))
 '(org-agenda-date ((t (:inherit org-agenda-structure :slant italic :height 1.1))))
 '(org-agenda-date-weekend ((t (:inherit org-agenda-date :foreground "purple4"))))
 '(org-agenda-structure ((t (:foreground "DeepSkyBlue4"))))
 '(org-block-begin-line ((t (:inherit org-meta-line :foreground "dark gray" :height 0.6))))
 '(org-checkbox-statistics-done ((t (:inherit org-done :height 0.7))))
 '(org-checkbox-statistics-todo ((t (:inherit org-todo))))
 '(org-date ((t (:inherit fixed-pitch :foreground "Purple"))))
 '(org-document-title ((t (:inherit default :weight bold :foreground "black" :height 1.3 :underline nil))))
 '(org-done ((t (:inherit org-todo :foreground "honeydew3"))))
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
 '(org-level-1 ((t (:family "IBM Plex Serif Medium" :weight normal :foreground "dark gray" :height 230 :antialias subpixel))))
 '(org-level-2 ((t (:inherit org-level-1 :foreground "dark cyan" :height 0.9))))
 '(org-level-3 ((t (:inherit org-level-1 :foreground "DeepSkyBlue4" :height 0.8))))
 '(org-level-4 ((t (:inherit org-level-1 :foreground "RoyalBlue4" :height 0.75))))
 '(org-level-5 ((t (:inherit org-level-4))))
 '(org-level-6 ((t (:inherit org-level-4))))
 '(org-level-7 ((t (:inherit org-level-4))))
 '(org-level-8 ((t (:inherit org-level-4))))
 '(org-link ((t (:inherit monospace :underline t))))
 '(org-list-dt ((t (:foreground "gray25" :slant italic))))
 '(org-priority ((t (:inherit font-lock-keyword-face :foreground "gray34" :family "IBM Plex Mono" :weight normal))))
 '(org-property-value ((t (:inherit org-special-keyword))) t)
 '(org-recur ((t (:foreground "light slate gray"))))
 '(org-scheduled ((t (:inherit org-scheduled-today))))
 '(org-scheduled-previously ((t (:foreground "IndianRed3"))))
 '(org-scheduled-today ((t (:foreground "SeaGreen4"))))
 '(org-tag ((t (:family "Calibri" :foreground "dark gray" :weight normal :height 0.5 :antialias standard))))
 '(org-time-grid ((t (:foreground "PeachPuff4"))))
 '(org-todo ((t (:inherit default :foreground "IndianRed4" :weight semibold :family "IBM Plex Sans Condensed SemiBold" :antialias subpixel))))
 '(secondary-selection ((t (:background "LightPink"))))
 '(shadow ((t (:foreground "honeydew3"))))
 '(variable-pitch ((t (:family "IBM Plex Sans Text" :height 152 :weight normal :antialias subpixel)))))



