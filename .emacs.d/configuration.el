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

;; Fonts and Faces
 ;;----------------
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Noto Mono" :foundry "outline" :slant normal :weight normal :height 158 :width normal))))
 '(fixed-pitch ((t (:family "Noto Mono" :foundry "outline" :slant normal :weight normal :height 158 :width normal))))
 '(org-document-title ((t (:inherit default :weight normal :foreground "dim gray" :height 1.3 :underline nil))))
 '(org-level-1 ((t (:inherit default :foreground "dark gray" :height 1.5))))
 '(org-level-2 ((t (:inherit default :foreground "dark cyan" :height 1.3))))
 '(org-level-3 ((t (:inherit default :foreground "RoyalBlue3"))))
 '(org-level-4 ((t (:inherit default :foreground "blue violet"))))
 '(org-level-5 ((t (:inherit default :foreground "DarkGoldenrod"))))
 '(org-level-6 ((t (:inherit default :weight bold :foreground "black"))))
 '(org-level-7 ((t (:inherit default :weight bold :foreground "black"))))
 '(org-level-8 ((t (:inherit default :weight bold :foreground "black"))))
 '(variable-pitch ((t (:family "Liberation Sans" :height 171 :weight normal)))))

(add-to-list 'default-frame-alist '(font . "Noto Mono-15" ))
(set-face-attribute 'default t :font "Noto Mono-15" )
;; To see available fonts evaluate the following in the *scratch* buffer
;; (message (mapconcat (quote identity) (sort (font-family-list) #'string-lessp) "\n"))

;; Set variable-pitch font using customize-face variable-pitch
;; Set the fonts to format correctly for specific modes. Default is set for fixed
;; so we only need to have the exceptions
(defun set-buffer-variable-pitch ()
  (interactive)
  (variable-pitch-mode t)
  (setq line-spacing 3)
  (set-face-attribute 'org-table nil :inherit 'fixed-pitch)
  (set-face-attribute 'org-link nil :inherit 'fixed-pitch)
  (set-face-attribute 'org-code nil :inherit 'fixed-pitch)
  (set-face-attribute 'org-block nil :inherit 'fixed-pitch)
  (set-face-attribute 'org-date nil :inherit 'fixed-pitch)
  (set-face-attribute 'org-special-keyword nil :inherit 'fixed-pitch)
  )

(add-hook 'org-mode-hook 'set-buffer-variable-pitch)
(add-hook 'Info-mode-hook 'set-buffer-variable-pitch)

(set-face-attribute 'org-meta-line nil :height 0.5 :slant 'normal :foreground "LavenderBlush3")

;; Org-mode settings
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-font-lock-mode 1)

 ;; Activate plain list cycle
 (setq org-list-use-circular-motion t)

(setq org-agenda-skip-scheduled-if-done t
      org-agenda-skip-deadline-if-done t
      org-agenda-skip-deadline-prewarning-if-scheduled t
      org-deadline-warning-days 2)

(add-hook 'org-agenda-mode-hook
	  (lambda()
	    (local-set-key (kbd "S-<up>") 'org-agenda-date-earlier-hours)
	    (local-set-key (kbd "S-<down>") 'org-agenda-date-later-hours)
     ))

;; default agenda commands
(setq org-agenda-custom-commands
   '(
     ("g" tags-tree "g" ((org-show-context-detail 'ancestors)))
     ("w" tags-tree "w" ((org-show-context-detail 'ancestors)))
    )
)

(el-patch-defun org-show-set-visibility (detail)
  "Set visibility around point according to DETAIL.
DETAIL is either nil, `minimal', `local', `ancestors', `lineage',
`tree', `canonical' or t.  See `org-show-context-detail' for more
information."
  ;; Show current heading and possibly its entry, following headline
  ;; or all children.
  (if (and (org-at-heading-p) (not (eq detail (el-patch-swap
                                                'local
                                                'ancestors))))
      (org-flag-heading nil)
    (org-show-entry)
    ;; If point is hidden within a drawer or a block, make sure to
    ;; expose it.
    (dolist (o (overlays-at (point)))
      (when (memq (overlay-get o 'invisible) '(org-hide-block outline))
        (delete-overlay o)))
    (unless (org-before-first-heading-p)
      (org-with-limited-levels
       (cl-case detail
         ((tree canonical t) (org-show-children))
         ((nil minimal ancestors))
         (t (save-excursion
              (outline-next-heading)
              (org-flag-heading nil)))))))
  ;; Show all siblings.
  (when (eq detail 'lineage) (org-show-siblings))
  ;; Show ancestors, possibly with their children.
  (when (memq detail '(ancestors lineage tree canonical t))
    (save-excursion
      (while (org-up-heading-safe)
        (org-flag-heading nil)
        (when (memq detail '(canonical t)) (org-show-entry))
        (when (memq detail '(tree canonical t)) (org-show-children))))))

;; Default span
(setq org-agenda-span 2)

;; Caprture Templates
(setq org-capture-templates
   '(
      ("t" "Todo [inbox]" entry (file+headline "~/ncloud/org/inbox.org" "Tasks") "* TODO %i%?")
      ("r" "Todo w Schedule [inbox]" entry (file+headline "~/ncloud/org/inbox.org" "Tasks") "** TODO %^{Titel} \n SCHEDULED: %^{Startzeitpunkt}t")
      ("d" "Todo w Deadline [inbox]" entry (file+headline "~/ncloud/org/inbox.org" "Tasks") "** TODO %^{Titel} \n DEADLINE: %^{Faellig bis}t")
      ("n" "Todo now [inbox]" entry (file+headline "~/ncloud/org/inbox.org" "Tasks") "* TODO %i%? \n SCHEDULED: %T")
      ("z" "Ziele (inbox-Tree)" entry (file+headline "~/ncloud/org/ziele.org" "Inbox") "* TODO %i%?")
      ("s" "prefix für someday-Tasks")
      ("sa" "Todo [someday Arbeit]" entry (file+headline "~/ncloud/org/asomeday.org" "Inbox") "* TODO %i%?")
      ("sh" "Todo [someday Home]" entry (file+headline "~/ncloud/org/hsomeday.org" "Inbox") "* TODO %i%?")
      ("T" "Tickler" entry (file+headline "~/ncloud/org/tickler.org" "Tickler") "** %^{Title} \n %^t")
      ("R" "Scheduled Tickler" entry (file+headline "~/ncloud/org/tickler.org" "Tickler") "** %^{Title} \n SCHEDULED: %^t")
  )
)

;; setting Refile Target
;;----------------------
(setq org-refile-targets '((org-agenda-files :maxlevel . 2))) ;; include all Agenda-Files and all Heading up to **
(setq org-refile-allow-creating-parent-nodes 'confirm)        ;;allow creating nodes. Refile has to end with /newheadingname

;; Make Org beautiful
;;-------------------
(setq org-hide-emphasis-markers t) ;; hide Markers like *this* for bold


;; ELECTRIC PAIR MODE (BUILT IN)
;; ----------------------------
(electric-pair-mode 1)

(defvar org-electric-pairs '((?\* . ?\*) (?/ . ?/) (?= . ?=)
                             (?\_ . ?\_) (?~ . ?~) (?+ . ?+)) "Electric pairs for org-mode.")

(defun org-add-electric-pairs ()
  (setq-local electric-pair-pairs (append electric-pair-pairs org-electric-pairs))
  (setq-local electric-pair-text-pairs electric-pair-pairs))

;; (add-hook 'org-mode-hook 'org-add-electric-pairs)

;; Hide leading stars
(setq org-hide-leading-stars t)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

;; make available "org-bullet-face" such that I can control the font size individually
(setq org-bullets-bullet-list '("⚜" "⚙" "❖" "✿" "❄" "❋" "★" "⚛")) ;; "✠" "✚" "✜" "✛" "✢" "✣" "✤" "✥"

(setq org-ellipsis "⤵")

;; Default Modes ON
(global-visual-line-mode t)

;; SAVING DESKTOP SESSIONS
;;------------------------
(desktop-save-mode 1)

;; Start any Windows maximised
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Set Sentence end to just one space
(setq sentence-end-double-space nil)

;; Workarounds
;; Bug 34341
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode -1)

(set-window-scroll-bars (minibuffer-window) nil nil)

(global-prettify-symbols-mode t)

(use-package moody
  :config
  (setq x-underline-at-descent-line t)
  (moody-replace-mode-line-buffer-identification)
  (moody-replace-vc-mode))
