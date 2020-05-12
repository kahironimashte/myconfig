(require 'package)
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl (warn "\
Your version of Emacs does not support SSL connections,
which is unsafe because it allows man-in-the-middle attacks.
There are two things you can do about this warning:
1. Install an Emacs version that does support SSL and be safe.
2. Remove this warning from your init file so you won't see it again."))
  (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://melpa.org/packages/")) t)
  ;; Comment/uncomment this line to enable MELPA Stable if desired.  See `package-archive-priorities`
  ;; and `package-pinned-packages`. Most users will not need or want to do this.
  ;;(add-to-list 'package-archives (cons "melpa-stable" (concat proto "://stable.melpa.org/packages/")) t)
  )
(package-initialize)



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
    ("~/ncloud/org/prsn/abschluss.org" "~/ncloud/org/checklisten.org" "~/ncloud/org/tickler.org" "~/ncloud/org/htasks.org" "~/ncloud/org/ziele.org" "~/ncloud/org/inbox.org")))
 '(org-default-priority 67)
 '(org-highest-priority 65)
 '(org-lowest-priority 68)
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-habit org-info org-inlinetask org-irc org-mhe org-rmail org-w3m)))
 '(org-priority-faces
   (quote
    ((65 :inherit org-priority :family "IBM Plex Mono" :weight semibold)
     (66 :inherit org-priority :family "IBM Plex Mono" :weight normal)
     (67 :inherit org-priority :family "IBM Plex Mono" :weight light)
     (68 :inherit org-priority :family "IBM Plex Mono" :weight extralight))))
 '(package-selected-packages
   (quote
    (ztree ac-alchemist which-key moody org-bullets use-package yankpad hydra ryo-modal org-super-agenda json-mode js2-mode))))
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
 '(org-archived ((t (:inherit shadow :foreground "honeydew3" :height 0.8))))
 '(org-block ((t (:inherit shadow :foreground "dim gray"))))
 '(org-block-begin-line ((t (:inherit org-meta-line :foreground "gray" :height 0.5))))
 '(org-date ((t (:inherit fixed-pitch :foreground "Purple"))))
 '(org-document-title ((t (:inherit default :weight bold :foreground "black" :underline t))))
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
 '(org-list-dt ((t (:foreground "gray30" :slant italic))))
 '(org-priority ((t (:height 1.1 :foreground "IndianRed4" :inherit font-lock-keyword-face :weight semi-bold))))
 '(org-tag ((t (:foreground "dark gray" :weight light :height 0.5))))
 '(org-todo ((t (:foreground "gray34" :weight semi-bold :family "IBM Plex Sans Condensed"))))
 '(org-verbatim ((t (:inherit shadow :foreground "honeydew4"))))
 '(secondary-selection ((t (:background "misty rose"))))
 '(shadow ((t (:foreground "honeydew2"))))
 '(variable-pitch ((t (:family "IBM Plex Sans Text" :height 152 :weight normal)))))
 ;; 152



;; Customisation from FILE
(require 'org)
(org-babel-load-file "~/.emacs.d/configuration.org")
