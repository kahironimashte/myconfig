;; -*- mode: elisp -*-

;; Package-Manager (Sources)
;;(add-to-list 'package-archives
;;             '("melpa-stable" . "https://stable.melpa.org/packages/") t)
;; temp. Fix für 26.2
(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")

;; Disable the splash screen (to enable it agin, replace the t with 0)

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq inhibit-splash-screen t)

;; Enable transient mark mode
(transient-mark-mode 1)

;; Default Modes ON
(global-visual-line-mode t)

;; Start in Fullscreen
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;;;;Org mode configuration
;; Enable Org mode
(require 'org)

;; Keys
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
;; locale Shortcuts für die Agenda
(add-hook 'org-agenda-mode-hook
  (lambda()
    (local-set-key (kbd "S-<up>") 'org-agenda-date-earlier-hours)
    (local-set-key (kbd "S-<down>") 'org-agenda-date-later-hours)
    ))
;; lokale Shortcuts für den org-mode
(add-hook 'org-mode-hook
  (lambda ()
    (define-key org-mode-map "\C-_" 'org-toggle-timestamp-type)
    ))

;; Display - funktioniert das hier?
;;(add-to-list 'default-frame-alist '(fullscreen . maximized))
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
    (ztree async csv-mode darkroom dts-mode json-mode minimap soap-client spinner transcribe yasnippet js2-mode))))


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
 '(org-level-1 ((t (:inherit default :foreground "dark gray" :height 1.5))))
 '(org-level-2 ((t (:inherit default :foreground "dark cyan" :height 1.3))))
 '(org-level-3 ((t (:inherit default :foreground "RoyalBlue3"))))
 '(org-level-4 ((t (:inherit default :foreground "blue violet"))))
 '(org-level-5 ((t (:inherit default :weight bold :foreground "black"))))
 '(org-level-6 ((t (:inherit default :weight bold :foreground "black"))))
 '(org-level-7 ((t (:inherit default :weight bold :foreground "black"))))
 '(org-level-8 ((t (:inherit default :weight bold :foreground "black"))))
 '(org-list-dt ((t (:foreground "#440000"))))
 '(variable-pitch ((t (:family "Liberation Sans" :height 171 :weight normal)))))

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

;; setting Refile Target
(setq org-refile-targets '((org-agenda-files :maxlevel . 1)
			   ("~/ncloud/org/asomeday.org" :maxlevel . 1))) ;; include all Agenda-Files and all Heading up to ** 
   (setq org-refile-allow-creating-parent-nodes 'confirm)        ;;allow creating nodes. Refile has to end with /newheadingname

;; Make Org beautiful
(setq org-hide-emphasis-markers t ;; hide Markers like *this* for bold
      org-hide-leading-stars t)   ;; hide all but one star
;; Capture Templates
(setq org-capture-templates '(
			      ("t" "Todo [inbox]" entry (file+headline "~/ncloud/org/inbox.org" "Tasks") "* TODO %i%?")
			      ("z" "Ziele (inbox-Tree)" entry (file+headline "~/ncloud/org/ziele.org" "Inbox") "* TODO %i%?")
                              ("s" "prefix für someday-Tasks")
			      ("sa" "Todo [someday Arbeit]" entry (file+headline "~/ncloud/org/asomeday.org" "Inbox") "* TODO %i%?")
			      ("sh" "Todo [someday Home]" entry (file+headline "~/ncloud/org/hsomeday.org" "Inbox") "* TODO %i%?")
                              ("T" "Tickler" entry (file+headline "~/ncloud/org/tickler.org" "Tickler") "* %i%? \n %U")
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
