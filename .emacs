;; ########     ###    ##    ## ######## ######## ######## 
;; ##     ##   ## ##   ##   ##  ##          ##    ##       
;; ##     ##  ##   ##  ##  ##   ##          ##    ##       
;; ########  ##     ## #####    ######      ##    ######   
;; ##        ######### ##  ##   ##          ##    ##       
;; ##        ##     ## ##   ##  ##          ##    ##       
;; ##        ##     ## ##    ## ########    ##    ######## 
;; Configure package.el to include MELPA.
(require 'package)
;;(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;;(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

;; use Melpa-Org-Version instead of builtin. Vorher habe ich die neueste org-Version aus Melpa installiert.
(assq-delete-all 'org package--builtins)
;; Quelle: https://github.com/jwiegley/use-package/issues/319#issuecomment-471274348


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
 '(custom-enabled-themes (quote (whiteboard)))
 '(font-use-system-font t)
 '(org-agenda-files
   (quote
    ("c:/org/htasks.org" "c:/org/calendar.org" "c:/org/atasks.org" "c:/org/ziele.org")))
 '(org-agenda-sorting-strategy
   (quote
    ((agenda time-up priority-down category-keep)
     (todo priority-down category-keep)
     (tags priority-down category-keep)
     (search category-keep))))
 '(org-default-priority 67)
 '(org-habit-completed-glyph 43)
 '(org-habit-show-done-always-green t)
 '(org-habit-today-glyph 9728)
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
    (org-caldav smartparens nov org-bookmark-heading org-recur which-key org-bullets use-package ryo-modal org spaceline))))

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
  (set-face-attribute 'org-special-keyword nil :inherit 'fixed-pitch)
  )

(add-hook 'org-mode-hook 'set-buffer-variable-pitch)
(add-hook 'Info-mode-hook 'set-buffer-variable-pitch)

;; Visual Line Mode in jedem Buffer automatisch aktivieren.
(global-visual-line-mode t)
;; Fontlock Mode in jedem Buffer automatisch aktivieren.
(global-font-lock-mode t)



;;    ###    ##       ##        ######   ######## ##     ## ######## #### ##    ## 
;;   ## ##   ##       ##       ##    ##  ##       ###   ### ##        ##  ###   ## 
;;  ##   ##  ##       ##       ##        ##       #### #### ##        ##  ####  ## 
;; ##     ## ##       ##       ##   #### ######   ## ### ## ######    ##  ## ## ## 
;; ######### ##       ##       ##    ##  ##       ##     ## ##        ##  ##  #### 
;; ##     ## ##       ##       ##    ##  ##       ##     ## ##        ##  ##   ### 
;; ##     ## ######## ########  ######   ######## ##     ## ######## #### ##    ## 
;; Einstellungen, die emacs im Allgemeinen betreffen.


;; Jedes Fenster maximiert starten.
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; DESKTOP-SAVE-MODE
(desktop-save-mode 1)

;; Open File-Extensions in emacs
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(add-to-list 'auto-mode-alist '("\\.org_archive\\'" . org-mode))
(add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))

;; Tweak window chrome
;;--------------------
;; I don’t usually use the menu or scroll bar, and they take up useful space.

(tool-bar-mode 0)
(menu-bar-mode 1)
(scroll-bar-mode -1)

;; There’s a tiny scroll bar that appears in the minibuffer window. This disables that:

(set-window-scroll-bars (minibuffer-window) nil nil)

;;  #######  ########   ######   
;; ##     ## ##     ## ##    ##  
;; ##     ## ##     ## ##        
;; ##     ## ########  ##   #### 
;; ##     ## ##   ##   ##    ##  
;; ##     ## ##    ##  ##    ##  
;;  #######  ##     ##  ######   
;; Org-mode settings
;;------------------

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)
(global-set-key (kbd "C-c c") 'org-capture)

;; ######## ##    ##  ######   #######  ########  #### ##    ##  ######   
;; ##       ###   ## ##    ## ##     ## ##     ##  ##  ###   ## ##    ##  
;; ##       ####  ## ##       ##     ## ##     ##  ##  ####  ## ##        
;; ######   ## ## ## ##       ##     ## ##     ##  ##  ## ## ## ##   #### 
;; ##       ##  #### ##       ##     ## ##     ##  ##  ##  #### ##    ##  
;; ##       ##   ### ##    ## ##     ## ##     ##  ##  ##   ### ##    ##  
;; ######## ##    ##  ######   #######  ########  #### ##    ##  ######   
;; ENCODING - Windows-spezifisch
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


;;(add-to-list 'load-path "c:/Software/Emacs/Plugins/emacs-neotree-dev")
;;(require 'neotree)
;;(global-set-key [f8] 'neotree-toggle)

;;(add-to-list 'load-path "c:/Software/Emacs/Plugins/minimap-master")
;;(require 'minimap)
;;(global-set-key [f7] 'minimap-mode)
;;(add-to-list 'minimap-major-modes 'org-mode) 

;;(add-to-list 'load-path "c:/Software/Emacs/Plugins/fold-this.el-master")
;;(require 'fold-this)
;;(global-set-key (kbd "C-c m") 'fold-this)
;;(global-set-key (kbd "C-c M") 'fold-this-unfold-all)

(add-to-list 'load-path "c:/Software/Emacs/Plugins/moody-master")
(use-package moody
  :config
  (setq x-underline-at-descent-line t)
  (moody-replace-mode-line-buffer-identification)
  (moody-replace-vc-mode)
  (setq moody-mode-line-height 24)
  )

(add-to-list 'load-path "c:/Software/Emacs/Plugins/valign-master")
(use-package valign
;;  :hook org-mode
)


;; ELECTRIC PAIR MODE (BUILT IN)
;; ----------------------------
;; (electric-pair-mode 1)

;; (defvar org-electric-pairs '((?\* . ?\*) (?/ . ?/) (?= . ?=)
;;                              (?\_ . ?\_) (?~ . ?~) (?+ . ?+)) "Electric pairs for org-mode.")

;; (defun org-add-electric-pairs ()
;;   (setq-local electric-pair-pairs (append electric-pair-pairs org-electric-pairs))
;;   (setq-local electric-pair-text-pairs electric-pair-pairs))

;; (add-hook 'org-mode-hook 'org-add-electric-pairs)


;; Set unzip location for nov.el
(setq nov-unzip-program "C:\\Software\\Emacs\\_unzip-Package\\bin\\unzip.exe")

;; Custimisation in Org-File
;;--------------------------
;; Starting

(require 'org)
(org-babel-load-file "~/configuration.org")
