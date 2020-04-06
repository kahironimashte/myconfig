;; Make Org beautiful
(setq org-hide-emphasis-markers t ;; hide Markers like *this* for bold
      org-hide-leading-stars t)   ;; hide all but one star

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

;; Locale Shortcuts für die Agenda
(add-hook 'org-agenda-mode-hook
  (lambda()
    (local-set-key (kbd "S-<up>") 'org-agenda-date-earlier-hours)
    (local-set-key (kbd "S-<down>") 'org-agenda-date-later-hours)
    ))

;; setting Refile Target
(setq org-refile-targets '((org-agenda-files :maxlevel . 1)
			   ("~/ncloud/org/asomeday.org" :maxlevel . 1))) ;; include all Agenda-Files and all Heading up to ** 
   (setq org-refile-allow-creating-parent-nodes 'confirm)        ;;allow creating nodes. Refile has to end with /newheadingname

;; Capture Templates
(setq org-capture-templates '(
			      ("t" "Todo [inbox]" entry (file+headline "~/ncloud/org/inbox.org" "Tasks") "* TODO %i%?")
			      ("z" "Ziele (inbox-Tree)" entry (file+headline "~/ncloud/org/ziele.org" "Inbox") "* TODO %i%?")
                              ("s" "prefix für someday-Tasks")
			      ("sa" "Todo [someday Arbeit]" entry (file+headline "~/ncloud/org/asomeday.org" "Inbox") "* TODO %i%?")
			      ("sh" "Todo [someday Home]" entry (file+headline "~/ncloud/org/hsomeday.org" "Inbox") "* TODO %i%?")
                              ("T" "Tickler" entry (file+headline "~/ncloud/org/tickler.org" "Tickler") "* %i%? \n %U")
 ))

;; ORG AGENDA
;; ------------------
(setq org-agenda-custom-commands
      '(("c" . "My Custom Agendas")
        ("cu" "Unscheduled TODO"
         ((todo ""
                ((org-agenda-overriding-header "\nUnscheduled TODO")
                 (org-agenda-skip-function '(org-agenda-skip-entry-if 'scheduled)))))
         nil
         nil)))

;; Agenda-Mode
(setq org-agenda-skip-scheduled-if-done t)
(setq org-agenda-skip-deadline-if-done t)
(setq org-deadline-warning-days 3)

;; Rechtschreibung
;;----------------
;; Ich musste noch das deutsche Wörterbuch installieren, bevor es klappt: sudo apt-get install aspell-de
 (setq ispell-dictionary "deutsch8")
 (setq ispell-local-dictionary "deutsch")
 (setq flyspell-default-dictionary "deutsch8")
 (add-hook 'text-mode-hook 'flyspell-mode)
 (autoload 'flyspell-mode "flyspell" "On-the-fly ispell." t)
 (setq flyspell-issue-welcome-flag nil)
