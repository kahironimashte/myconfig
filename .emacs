;; Configure package.el to include MELPA.
(require 'package)
;;(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;;(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

;; ALT -- use-package automatisch installieren, wenn noch nicht vorhanden
;;
;; If use-package isn't already installed, it's extremely likely that this is a
;; fresh installation! So we'll want to update the package repository and
;; install use-package before loading the literate configuration.
;;(when (not (package-installed-p 'use-package))
;;  (package-refresh-contents)
;;  (package-install 'use-package))

;; ALT --- use-package von der lokalen Installation ziehen
;;
;; USE-PACKAGE-PLUGIN
;; This is only needed once, near the top of the file
;;(eval-when-compile
;; Following line is not needed if use-package.el is in ~/.emacs.d
;;  (add-to-list 'load-path "c:/Software/Emacs/Plugins/use-package-master")
;;  (require 'use-package))



(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (whiteboard)))
 '(font-use-system-font t)
 '(org-agenda-files
   (quote
    ("c:/org/atasks.org" "c:/org/tickler.org" "c:/org/ziele.org" "c:/org/inbox.org" "c:/org/prsn/abschluss.org")))
 '(org-default-priority 67)
 '(org-hide-leading-stars t)
 '(org-highest-priority 65)
 '(org-lowest-priority 68)
 '(org-priority-faces
   (quote
    ((65 :inherit org-priority :weight bold)
     (66 :inherit org-priority :family "IBM Plex Mono SemiBold" :weight semibold)
     (67 :inherit org-priority :family "IBM Plex Mono" :weight normal)
     (68 :inherit org-priority :family "IBM Plex Mono Light" :weight light))))
 '(org-startup-align-all-tables t)
 '(org-tags-column 0)
 '(package-selected-packages
   (quote
    (org-bookmark-heading org-recur which-key org-bullets use-package ryo-modal org spaceline))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "IBM Plex Mono Text" :foundry "outline" :slant normal :weight normal :height 148 :width normal :antialias subpixel))))
 '(fixed-pitch ((t (:foreground "gray44" :slant normal :weight normal :height 120 :width normal :foundry "outline" :family "IBM Plex Mono Text"))))
 '(font-lock-warning-face ((t (:foreground "maroon"))))
 '(match ((t (:background "MistyRose1"))))
 '(org-agenda-structure ((t (:foreground "DeepSkyBlue4"))))
 '(org-block-begin-line ((t (:inherit org-meta-line :foreground "dark gray" :height 0.6))))
 '(org-date ((t (:inherit fixed-pitch :foreground "Purple"))))
 '(org-document-title ((t (:inherit default :weight bold :foreground "black" :height 1.3 :underline nil))))
 '(org-done ((t (:inherit org-todo :foreground "honeydew3"))))
 '(org-drawer ((t (:inherit org-special-keyword))))
 '(org-ellipsis ((t (:foreground "turquoise1" :underline nil :height 0.65))))
 '(org-level-1 ((t (:family "IBM Plex Serif Medium" :weight normal :foreground "dark gray" :height 230 :antialias subpixel))))
 '(org-level-2 ((t (:inherit org-level-1 :foreground "dark cyan" :height 0.9))))
 '(org-level-3 ((t (:inherit org-level-1 :foreground "DeepSkyBlue4" :height 0.8))))
 '(org-level-4 ((t (:inherit org-level-1 :foreground "RoyalBlue4" :height 0.75))))
 '(org-level-5 ((t (:inherit org-level-4))))
 '(org-level-6 ((t (:inherit org-level-4))))
 '(org-level-7 ((t (:inherit org-level-4))))
 '(org-level-8 ((t (:inherit org-level-4))))
 '(org-link ((t (:inherit fixed-pitch :foreground "SlateBlue3" :height 1.2))))
 '(org-list-dt ((t (:foreground "gray25" :slant italic))))
 '(org-priority ((t (:inherit font-lock-keyword-face :foreground "gray34" :family "IBM Plex Mono" :weight normal))))
 '(org-property-value ((t (:inherit org-special-keyword))) t)
 '(org-recur ((t (:inherit org-tag :height 1.6))))
 '(org-scheduled ((t (:inherit org-scheduled-today))))
 '(org-scheduled-previously ((t (:foreground "IndianRed3"))))
 '(org-scheduled-today ((t (:foreground "SeaGreen4"))))
 '(org-tag ((t (:family "Calibri" :foreground "dark gray" :weight normal :height 0.5 :antialias standard))))
 '(org-time-grid ((t (:foreground "PeachPuff4"))))
 '(org-todo ((t (:foreground "IndianRed4" :weight semibold :family "IBM Plex Sans Condensed SemiBold" :antialias subpixel))))
 '(secondary-selection ((t (:background "LightPink"))))
 '(shadow ((t (:foreground "honeydew3"))))
 '(variable-pitch ((t (:family "IBM Plex Sans Text" :height 152 :weight normal :antialias subpixel)))))



;; Backup Fonts
;; (custom-set-faces
;;  ;; custom-set-faces was added by Custom.
;;  ;; If you edit it by hand, you could mess it up, so be careful.
;;  ;; Your init file should contain only one such instance.
;;  ;; If there is more than one, they won't work right.
;;  '(default ((t (:family "Courier New" :foundry "outline" :slant normal :weight normal :height 158 :width normal))))
;;  '(fixed-pitch ((t (:family "Courier New" :foundry "outline" :slant normal :weight normal :height 158 :width normal))))
;;  '(org-document-title ((t (:inherit default :weight bold :foreground "black" :height 1.3 :underline nil))))
;;  '(org-level-1 ((t (:inherit default :foreground "dark gray" :height 1.5))))
;;  '(org-level-2 ((t (:inherit default :foreground "dark cyan" :height 1.3))))
;;  '(org-level-3 ((t (:inherit default :foreground "RoyalBlue3"))))
;;  '(org-level-4 ((t (:inherit default :foreground "blue violet"))))
;;  '(org-level-5 ((t (:inherit default :foreground "Indianred1"))))
;;  '(org-level-6 ((t (:inherit default :foreground "NavajoWhite3"))))
;;  '(org-level-7 ((t (:inherit default :weight bold :foreground "black"))))
;;  '(org-level-8 ((t (:inherit default :weight bold :foreground "black"))))
;;  '(org-list-dt ((t (:slant italic))))
;;  '(org-tag ((t (:foreground "gray" :weight normal :height 0.5))))
;;  '(variable-pitch ((t (:family "Calibri" :height 171 :weight normal)))))

;; FONTS
;; -----
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
; (set-face-attribute 'minimap-mode nil :inherit 'fixed-pitch)
  (set-face-attribute 'org-special-keyword nil :inherit 'fixed-pitch)
  )

(add-hook 'org-mode-hook 'set-buffer-variable-pitch)
(add-hook 'Info-mode-hook 'set-buffer-variable-pitch)


;; Default Modes ON
(global-visual-line-mode t)

;; Start any Windows maximised
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Satz endet mit einem Leerzeichen (statt normal zwei)
(setq sentence-end-double-space nil)

;; Jump in the document
;;--------------------
;; "Move cursor to last mark position of current buffer.
;; Call this repeatedly will cycle all positions in `mark-ring'.
;; URL `http://ergoemacs.org/emacs/emacs_jump_to_previous_position.html'
;; Version 2016-04-04"
(defun xah-pop-local-mark-ring ()
  (interactive)
  (set-mark-command t))
(global-set-key (kbd "<f5>") 'pop-global-mark)
(global-set-key (kbd "<f6>") 'xah-pop-local-mark-ring)



;;  #######  ########   ######   
;; ##     ## ##     ## ##    ##  
;; ##     ## ##     ## ##        
;; ##     ## ########  ##   #### 
;; ##     ## ##   ##   ##    ##  
;; ##     ## ##    ##  ##    ##  
;;  #######  ##     ##  ######   
;; Org-mode settings
;;------------------
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))

;; use ELPA-Org-Version instead of builtin
(assq-delete-all 'org package--builtins) ;; Quelle: https://github.com/jwiegley/use-package/issues/319#issuecomment-471274348



;; CLOCKING: global Effort estimate values
(setq org-global-properties
      '(("Effort_ALL" .
         "1:00 2:00 3:00 4:00 5:00 0:10 0:20 0:30 0:45 0:00 6:00 7:20 8:00 9:00 10:00")))
;;        1    2    3    4    5    6    7    8    9    0
;; These are the hotkeys

;; CLOCKING: Set default column view headings: Task Priority Effort Clock_Summary
(setq org-columns-default-format "%50ITEM(Task) %2PRIORITY %5Effort(Effrt){:} %5CLOCKSUM %TODO %SCHEDULED %DEADLINE")

;; Keyboard Shortcuts
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key (kbd "C-ä") 'count-words) 
(global-set-key (kbd "C-ß") 'org-toggle-timestamp-type)
(global-font-lock-mode 1)
;; (global-set-key (kbd "<apps>") 'other-window)
(global-set-key (kbd "<f7>") 'switch-to-buffer)

;; Org-mode TODO
;;(setq org-log-done 'time)


;; Caprture Templates
;;-------------------
(setq org-capture-templates
  '(
    ("t" "Todo [inbox]" entry (file+headline "c:/org/inbox.org" "Tasks") "* TODO %i%?")
    ("r" "Todo w Schedule [inbox]" entry (file+headline "c:/org/inbox.org" "Tasks") "** TODO %^{Titel} \n SCHEDULED: %^{Startzeitpunkt}t")
    ("d" "Todo w Deadline [inbox]" entry (file+headline "c:/org/inbox.org" "Tasks") "** TODO %^{Titel} \n DEADLINE: %^{Faellig bis}t")
    ("n" "Todo now [inbox]" entry (file+headline "q:org/inbox.org" "Tasks") "* TODO %i%? \n SCHEDULED: %T")
    ("z" "Ziele (inbox-Tree)" entry (file+headline "c:/org/ziele.org" "Inbox") "* TODO %i%?")
    ("s" "prefix für someday-Tasks")
    ("sa" "Todo [someday Arbeit]" entry (file+headline "c:/org/asomeday.org" "Inbox") "* TODO %i%?")
    ("sh" "Todo [someday Home]" entry (file+headline "c:/org/hsomeday.org" "Inbox") "* TODO %i%?")
    ("T" "Tickler" entry (file+headline "c:/org/tickler.org" "Tickler") "** %^{Title} \n %^t")
    ("R" "Scheduled Tickler" entry (file+headline "c:/org/tickler.org" "Tickler") "** %^{Title} \n SCHEDULED: %^t")
 ))

;; setting Refile Target
(setq org-refile-targets '((org-agenda-files :maxlevel . 1)
			   ("c:/org/asomeday.org" :maxlevel . 1)
			   ("c:/org/atasks.org" :maxlevel . 2))) ;; include all Agenda-Files and all Heading up to ** 
   (setq org-refile-allow-creating-parent-nodes 'confirm)        ;;allow creating nodes. Refile has to end with /newheadingname

;; Make Org beautiful
(setq org-hide-emphasis-markers t) ;; hide Markers like *this* for bold


;; Clocking
;;---------
(setq org-clock-persist 'history)
(org-clock-persistence-insinuate)

;; Change Faces for specific Tags
;; --- FUNKTIONIERT MIT NEUER ORG-VERSION NICHT
;; from https://stackoverflow.com/questions/40876294/color-tags-based-on-regex-emacs-org-mode

;; (add-to-list 'org-tag-faces '("@.*" . (:foreground "sienna4" :weight normal :height 0.8 )))

;; ;; Reset the global variable to nil, just in case org-mode has already beeen used.
;; (when org-tags-special-faces-re
;;   (setq org-tags-special-faces-re nil))

;; (defun org-get-tag-face (kwd)
;;   "Get the right face for a TODO keyword KWD.
;; If KWD is a number, get the corresponding match group."
;;   (if (numberp kwd) (setq kwd (match-string kwd)))
;;   (let ((special-tag-face (or (cdr (assoc kwd org-tag-faces))
;;                               (and (string-match "^@.*" kwd)
;;                                    (cdr (assoc "@.*" org-tag-faces))))))
;;     (or (org-face-from-face-or-color 'tag 'org-tag special-tag-face)
;;         'org-tag)))


;;    ###     ######   ######## ##    ## ########     ###    
;;   ## ##   ##    ##  ##       ###   ## ##     ##   ## ##   
;;  ##   ##  ##        ##       ####  ## ##     ##  ##   ##  
;; ##     ## ##   #### ######   ## ## ## ##     ## ##     ## 
;; ######### ##    ##  ##       ##  #### ##     ## ######### 
;; ##     ## ##    ##  ##       ##   ### ##     ## ##     ## 
;; ##     ##  ######   ######## ##    ## ########  ##     ## 
;; Agenda-Mode
;;------------

;; Kein visual-line-mode in Agendas - Lange Zeilen werden nicht umbebrochen
(add-hook 'org-agenda-mode-hook
          (lambda ()
            (visual-line-mode -1)
            (toggle-truncate-lines 1)))

;; Clock-Report-View auf Level 3
(setq org-agenda-clockreport-parameter-plist '(:link t :maxlevel 3))

;; Ansicht
(setq org-agenda-skip-scheduled-if-done t)
(setq org-agenda-skip-deadline-if-done t)
(setq org-use-tag-inheritance t
      org-tags-match-list-sublevels nil)
;; Set ARCHIVE TAG on CANCELLED state
(setq org-todo-state-tags-triggers
      '(("CANCELLED" ("ARCHIVE" . t)))
      )
  ;; Erklaerung: Agenda-Mode-Hook laeuft vor dem Agenda-Mode. Mit local-set-key wird nur fuer den Mode eine Tastenzuweisung angelegt:
(add-hook 'org-agenda-mode-hook
	  (lambda ()
	    (local-set-key (kbd "S-<up>") 'org-agenda-date-earlier-hours)
	    (local-set-key (kbd "S-<down>") 'org-agenda-date-later-hours)
))

;; Default Kalender-Zeit
(setq org-agenda-span 2)



;; AGENDA MODES - Hier gibt es einen Fehler...
;;--------------
(setq org-agenda-custom-commands
      '(("u" . "My Custom Agendas")
	("um" "Ausgaben im März" tags "{20#[1][0-3]}") ;; Suche für Ausgaben im März (10-13)
	("ua" "Ausgaben im April" tags "{20#[1][4-8]}") ;; Suche für Ausgaben im April (14-18)
        ("uu" "TODO ohne Zeitpunkt"
         ((todo ""
                ((org-agenda-overriding-header "\nUnscheduled TODO")
                 (org-agenda-skip-function '(org-agenda-skip-entry-if 'scheduled))
	)))
	 nil
         nil)
        ("d" "Nur Deadlines" agenda "Diesen Monat" (
             (org-agenda-span 'month)
             (org-agenda-time-grid nil)
             (org-agenda-show-all-dates nil)
             (org-agenda-entry-types '(:deadline)) ;; this entry excludes :scheduled
             (org-deadline-warning-days 0) ))
	("n" "Nächste Schritte" occur-tree "NEXT")

	))

;; Funktionen für Sortierung nach NEXT-Keywords
     (defun my-skip-unless-next ()
       "Skip trees that are not next"
       (let ((subtree-end (save-excursion (org-end-of-subtree t))))
         (if (re-search-forward "" subtree-end t)
             nil          ; tag found, do not skip
           subtree-end))) ; tag not found, continue after end of subtree

;; Tage, die eine Deadline vorher angekündigt wird
(setq org-deadline-warning-days 3)
;; Deaktiviert die Deadline-Warung, wenn die Aufgabe Terminiert wurde.
(setq org-agenda-skip-deadline-prewarning-if-scheduled t)

;; ######## ##    ##  ######   #######  ########  #### ##    ##  ######   
;; ##       ###   ## ##    ## ##     ## ##     ##  ##  ###   ## ##    ##  
;; ##       ####  ## ##       ##     ## ##     ##  ##  ####  ## ##        
;; ######   ## ## ## ##       ##     ## ##     ##  ##  ## ## ## ##   #### 
;; ##       ##  #### ##       ##     ## ##     ##  ##  ##  #### ##    ##  
;; ##       ##   ### ##    ## ##     ## ##     ##  ##  ##   ### ##    ##  
;; ######## ##    ##  ######   #######  ########  #### ##    ##  ######   
;; ENCODING
;; --------
(add-to-list 'file-coding-system-alist '("\\.org" . utf-8-unix) )
(add-to-list 'file-coding-system-alist '("\\.tex" . utf-8-unix) )
(add-to-list 'file-coding-system-alist '("\\.txt" . utf-8-unix) )
(add-to-list 'file-coding-system-alist '("\\.el" . utf-8-unix) )
(add-to-list 'file-coding-system-alist '("\\.scratch" . utf-8-unix) )
(add-to-list 'file-coding-system-alist '("user_prefs" . utf-8-unix) )

(add-to-list 'process-coding-system-alist '("\\.txt" . utf-8-unix) )

(add-to-list 'network-coding-system-alist '("\\.txt" . utf-8-unix) )

(prefer-coding-system 'utf-8-unix)
(set-default-coding-systems 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)
(set-selection-coding-system 'utf-16-le)
(setq-default buffer-file-coding-system 'utf-8-unix)

;; Treat clipboard input as UTF-8 string first; compound text next, etc.
(setq x-select-request-type '(UTF8_STRING COMPOUND_TEXT TEXT STRING))

;; mnemonic for utf-8 is "U", which is defined in the mule.el
(setq eol-mnemonic-dos ":CRLF")
(setq eol-mnemonic-mac ":CR")
(setq eol-mnemonic-undecided ":?")
(setq eol-mnemonic-unix ":LF")

(defalias 'read-buffer-file-coding-system 'lawlist-read-buffer-file-coding-system)
(defun lawlist-read-buffer-file-coding-system ()
  (let* ((bcss (find-coding-systems-region (point-min) (point-max)))
         (css-table
          (unless (equal bcss '(undecided))
            (append '("dos" "unix" "mac")
                    (delq nil (mapcar (lambda (cs)
                                        (if (memq (coding-system-base cs) bcss)
                                            (symbol-name cs)))
                                      coding-system-list)))))
         (combined-table
          (if css-table
              (completion-table-in-turn css-table coding-system-alist)
            coding-system-alist))
         (auto-cs
          (unless find-file-literally
            (save-excursion
              (save-restriction
                (widen)
                (goto-char (point-min))
                (funcall set-auto-coding-function
                         (or buffer-file-name "") (buffer-size))))))
         (preferred 'utf-8-unix)
         (default 'utf-8-unix)
         (completion-ignore-case t)
         (completion-pcm--delim-wild-regex ; Let "u8" complete to "utf-8".
          (concat completion-pcm--delim-wild-regex
                  "\\|\\([[:alpha:]]\\)[[:digit:]]"))
         (cs (completing-read
              (format "Coding system for saving file (default %s): " default)
              combined-table
              nil t nil 'coding-system-history
              (if default (symbol-name default)))))
    (unless (zerop (length cs)) (intern cs))))


;; ########  ##       ##     ##  ######   #### ##    ##  ######  
;; ##     ## ##       ##     ## ##    ##   ##  ###   ## ##    ## 
;; ##     ## ##       ##     ## ##         ##  ####  ## ##       
;; ########  ##       ##     ## ##   ####  ##  ## ## ##  ######  
;; ##        ##       ##     ## ##    ##   ##  ##  ####       ## 
;; ##        ##       ##     ## ##    ##   ##  ##   ### ##    ## 
;; ##        ########  #######   ######   #### ##    ##  ######  


(add-to-list 'load-path "c:/Software/Emacs/Plugins/emacs-neotree-dev")
(require 'neotree)
(global-set-key [f8] 'neotree-toggle)

;;(add-to-list 'load-path "c:/Software/Emacs/Plugins/minimap-master")
;;(require 'minimap)
;;(global-set-key [f7] 'minimap-mode)
;;(add-to-list 'minimap-major-modes 'org-mode) 

(add-to-list 'load-path "c:/Software/Emacs/Plugins/fold-this.el-master")
(require 'fold-this)
(global-set-key (kbd "C-c m") 'fold-this)
(global-set-key (kbd "C-c M") 'fold-this-unfold-all)

(add-to-list 'load-path "c:/Software/Emacs/Plugins/moody-master")
(use-package moody
  :config
  (setq x-underline-at-descent-line t)
  (moody-replace-mode-line-buffer-identification)
  (moody-replace-vc-mode)
  (setq moody-mode-line-height 24)
  )

;(require 'spaceline-config)
;(spaceline-emacs-theme) 

;; ELECTRIC PAIR MODE (BUILT IN)
;; ----------------------------
;; (electric-pair-mode 1)

;; (defvar org-electric-pairs '((?\* . ?\*) (?/ . ?/) (?= . ?=)
;;                              (?\_ . ?\_) (?~ . ?~) (?+ . ?+)) "Electric pairs for org-mode.")

;; (defun org-add-electric-pairs ()
;;   (setq-local electric-pair-pairs (append electric-pair-pairs org-electric-pairs))
;;   (setq-local electric-pair-text-pairs electric-pair-pairs))

;; (add-hook 'org-mode-hook 'org-add-electric-pairs)

;; DESKTOP-SAVE-MODE
(desktop-save-mode 1)

;;; Stefan Monnier <foo at acm.org>. It is the opposite of fill-paragraph    
(defun unfill-paragraph (&optional region)
  "Takes a multi-line paragraph and makes it into a single line of text."
  (interactive (progn (barf-if-buffer-read-only) '(t)))
  (let ((fill-column (point-max))
	;; This would override `fill-column' if it's an integer.
	(emacs-lisp-docstring-fill-column t))
    (fill-paragraph nil region)))

;; Handy key definition
(define-key global-map "\M-Q" 'unfill-paragraph)

;; Open Archive-File-Extensions
(add-to-list 'auto-mode-alist '("\\.org_archive\\'" . org-mode))

;; Tweak window chrome
;;--------------------
;; I don’t usually use the menu or scroll bar, and they take up useful space.

(tool-bar-mode 0)
(menu-bar-mode 1)
(scroll-bar-mode -1)

;; There’s a tiny scroll bar that appears in the minibuffer window. This disables that:

(set-window-scroll-bars (minibuffer-window) nil nil)


;; Custimisation in Org-File
;;--------------------------
;; Starting

(require 'org)
(org-babel-load-file "~/configuration.org")
