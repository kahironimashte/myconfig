(require 'package) ;; aktiviert package.el, den Paketmanager

;; Paketquellen MELPA hinzufuegen
(let* ((no-ssl (and (memq system-type '(windows-nt ms-dos))
                    (not (gnutls-available-p))))
       (proto (if no-ssl "http" "https")))
  (when no-ssl (warn "\
   Your version of Emacs does not support SSL connections."))
  (add-to-list 'package-archives (cons "melpa-stable" (concat proto "://melpa.org/packages/")) t)
  )

(package-initialize) ;; Mit (package-initialize t) werden die Pakete NICHT geladen. Das kann nützlich sein, wenn man Pakete über use-package laden will. 

;; use Melpa-Org-Version instead of builtin. Vorher habe ich die neueste org-Version aus Melpa installiert.
(assq-delete-all 'org package--builtins)
;; Quelle: https://github.com/jwiegley/use-package/issues/319#issuecomment-471274348

;; Lokalisierung
;;   spezielle Anpassungen für Windows oder Linux-Systeme
;; von https://karl-voit.at/2017/02/11/my-system-is-foobar/
(when (string-equal system-type "windows-nt")
  (setq homedir "C:/Software/Emacs/myconfig/")
  (setq custom-file-name "win-custom.el")
  )

(when (string-equal system-type "gnu/linux")
  (setq homedir "~/")
  (setq custom-file-name "linux-custom.el")
  )

;; Lade Einstellungen, die über das Custom-Interface gemacht wurden. Meistens für die Darstellung und Gestaltung
;; - Meistens fuer die Darstellung und Gestaltung
(setq custom-file (concat homedir ".emacs.d/" custom-file-name))
(load custom-file)

;; Lade configuration.org
(setq config-org-file (concat homedir ".emacs.d/configuration.org"))
(org-babel-load-file config-org-file)

;; Pfade auf lokale Umgebungen anpassen. Die Pfade müssen dann mit (concat variable "/realtiv/pfad") angegeben werden
(require 'org)
(if (eq system-type 'windows-nt)
    (setq org-directory "c:/org")
  (setq org-directory "~/ncloud/org"))

