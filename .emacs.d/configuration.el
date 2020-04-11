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

;; SAVING DESKTOP SESSIONS
;;------------------------
(desktop-save-mode 1)

;; Set Sentence end to just one space
(setq sentence-end-double-space nil)

;; Workarounds
;; Bug 34341
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

;; Default Modes ON
(global-visual-line-mode t)

;; Start in Fullscreen
(add-to-list 'default-frame-alist '(fullscreen . maximized))

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

(setq org-hide-emphasis-markers t ;; hide Markers like *this* for bold
      org-hide-leading-stars t)   ;; hide all but one star

(require 'org-bullets)
 (add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

 ;; set custom bullets
(setq org-bullets-bullet-list '("⚜" "⚙" "❖" "✿" "❄" "❋" "★" "⚛")) ;; "✠" "✚" "✜" "✛" "✢" "✣" "✤" "✥"

(setq org-ellipsis "⤵")

(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode -1)

(set-window-scroll-bars (minibuffer-window) nil nil)

(use-package moody
    :config
    (setq x-underline-at-descent-line t)
    (moody-replace-mode-line-buffer-identification)
    (moody-replace-vc-mode)
    (setq moody-mode-line-height 28)
)

(global-prettify-symbols-mode t)

(add-hook 'focus-in-hook 
  (lambda () (progn 
    (setq org-tags-column (- 5 (window-body-width)))) (org-align-all-tags)))

(add-hook 'focus-out-hook 
  (lambda () (progn 
    (setq org-tags-column (- 5 (window-body-width)))) (org-align-all-tags)))

;; Locale Shortcuts für die Agenda
(add-hook 'org-agenda-mode-hook
  (lambda()
    (local-set-key (kbd "S-<up>") 'org-agenda-date-earlier-hours)
    (local-set-key (kbd "S-<down>") 'org-agenda-date-later-hours)
    ))

(setq org-agenda-custom-commands '(
        ("g" tags-tree "g" ((org-show-context-detail 'ancestors)))
	("w" tags-tree "w" ((org-show-context-detail 'ancestors)))
        ("c" . "My Custom Agendas")
        ("cu" "Unscheduled TODO"
         ((todo ""
           ((org-agenda-overriding-header "\nUnscheduled TODO")
            (org-agenda-skip-function 
	     '(org-agenda-skip-entry-if 'scheduled)
	   ))
	 ))
        nil nil)
))

(setq org-agenda-skip-scheduled-if-done t)
(setq org-agenda-skip-deadline-if-done t)
(setq org-deadline-warning-days 3)

;; Default span
(setq org-agenda-span 2)

;; setting Refile Target
 (setq org-refile-targets '(
   (org-agenda-files :maxlevel . 1)
   ("~/ncloud/org/asomeday.org" :maxlevel . 1))) ;; include all Agenda-Files and all Heading up to ** 
 (setq org-refile-allow-creating-parent-nodes 'confirm)        ;;allow creating nodes. Refile has to end with /newheadingname

;; Keys
 (global-set-key "\C-cl" 'org-store-link)
 (global-set-key "\C-ca" 'org-agenda)
 (global-set-key "\C-cc" 'org-capture)

;; Activate plain list cycle
(setq org-list-use-circular-motion t)

;; Capture Templates
(setq org-capture-templates '(
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
 ))

;; lokale Shortcuts für den org-mode
(add-hook 'org-mode-hook
  (lambda ()
    (define-key org-mode-map "\C-_" 'org-toggle-timestamp-type)
    ))

;; Rechtschreibung
;;----------------
;; Ich musste noch das deutsche Wörterbuch installieren, bevor es klappt: sudo apt-get install aspell-de
 (setq ispell-dictionary "deutsch8")
 (setq ispell-local-dictionary "deutsch")
 (setq flyspell-default-dictionary "deutsch8")
 (add-hook 'text-mode-hook 'flyspell-mode)
 (autoload 'flyspell-mode "flyspell" "On-the-fly ispell." t)
 (setq flyspell-issue-welcome-flag nil)
