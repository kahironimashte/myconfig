(require 'package) ;; aktiviert package.el, den Paketmanager

;; Paketquellen MELPA hinzufügen
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl (warn "\
   Your version of Emacs does not support SSL connections."))
  (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://melpa.org/packages/")) t)
  )

(package-initialize) ;; Mit (package-initialize t) werden die Pakete NICHT geladen. Das kann nützlich sein, wenn man Pakete über use-package laden will. 



;; Lade Einstellungen, die über das Custom-Interface gemacht wurden. Meistens für die Darstellung und Gestaltung
(setq custom-file (concat "~/.emacs.d/emacs-custom.el"))
(load custom-file)



;; Pfade auf lokale Umgebungen anpassen. Die Pfade müssen dann mit (concat variable "/realtiv/pfad") angegeben werden
(require 'org)
(if (eq system-type 'windows-nt)
    (setq org-directory "c:/org")
  (setq org-directory "~/ncloud/org"))

;; Lade emacs Konfiguration aus einer .org-Datei.
(org-babel-load-file "~/.emacs.d/configuration.org")
