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


(setq custom-file "~/.emacs.d/emacs-custom.el")
(load custom-file)

;; Lade emacs Konfiguration aus einer .org-Datei.
(require 'org)
(org-babel-load-file "~/.emacs.d/configuration.org")
