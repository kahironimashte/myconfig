(require 'org)
(org-babel-load-file "~/.emacs.d/configuration.org")


;; CUSTOM from here

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(moody-mode-line-height 28)
 '(org-agenda-files
   (quote
    ("~/ncloud/org/checklisten.org" "~/ncloud/org/tickler.org" "~/ncloud/org/htasks.org" "~/ncloud/org/ziele.org" "~/ncloud/org/inbox.org" "~/ncloud/org/prsn/abschluss.org")))
 '(org-modules
   (quote
    (org-bbdb org-bibtex org-docview org-gnus org-habit org-info org-inlinetask org-irc org-mhe org-rmail org-w3m)))
 '(package-selected-packages (quote (org-super-agenda json-mode js2-mode))))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Noto Mono" :foundry "outline" :slant normal :weight normal :height 158 :width normal))))
 '(fixed-pitch ((t (:family "Noto Mono" :foundry "outline" :slant normal :weight normal :height 158 :width normal))))
 '(org-document-title ((t (:inherit default :weight normal :foreground "dim gray" :height 1.3 :underline nil))))
 '(org-ellipsis ((t (:foreground "turquoise1" :underline nil))))
 '(org-level-1 ((t (:inherit default :foreground "dark gray" :height 1.5))))
 '(org-level-2 ((t (:inherit default :foreground "dark cyan" :height 1.3))))
 '(org-level-3 ((t (:inherit default :foreground "RoyalBlue3"))))
 '(org-level-4 ((t (:inherit default :foreground "blue violet"))))
 '(org-level-5 ((t (:inherit default :foreground "DarkGoldenrod"))))
 '(org-level-6 ((t (:inherit default :weight bold :foreground "black"))))
 '(org-level-7 ((t (:inherit default :weight bold :foreground "black"))))
 '(org-level-8 ((t (:inherit default :weight bold :foreground "black"))))
 '(variable-pitch ((t (:family "Liberation Sans" :height 171 :weight normal)))))
