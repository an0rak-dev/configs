;; Register paths
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;; Visual
(load-theme 'tron-legacy t)
(setq tron-legacy-theme-softer-bg t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(global-display-line-numbers-mode)
(global-hl-line-mode)

;; Packages
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(magit)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
