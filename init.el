;; inhibit splash screen
(setq inhibit-splash-screen t)

;; set default font and size
(set-face-attribute 'default nil :font "JetbrainsMono-10" )

;; disable menu on startup
(menu-bar-mode -1)

;; disable tools on startup
(tool-bar-mode -1)

;; disable scroll bar on startup
(toggle-scroll-bar -1)

;; line numbers
(global-display-line-numbers-mode t)
(setq display-line-numbers-type 'relative)

;; thin cursor
(setq-default cursor-type 'bar)

;; themes
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; extra packages
(add-to-list 'load-path "~/.emacs.d/packages")

;; wc-mode
(require 'wc-mode)
;; key-binding for wc-mode
(global-set-key "\C-cw" 'wc-mode)

;; dashboard
(require 'dashboard)
(dashboard-setup-startup-hook)
(setq dashboard-banner-logo-title "Welcome to D.W. Emacs")
(setq dashboard-startup-banner "~/.emacs.d/images/dean.png") 
(setq dashboard-center-content t)

;; theme
(load-theme 'zenburn t)

;; web mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))
(defun my-web-mode-hook ()
  "Hooks for Web mode."
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-code-indent-offset 2)
)
(add-hook 'web-mode-hook  'my-web-mode-hook)

;; emmet mode
(require 'emmet-mode)

;; php mode
(add-hook 'php-mode-hook 'php-enable-wordpress-coding-style)

;; rainbow delimiters
(add-hook 'markdown-mode-hook #'rainbox-delimiters-mode)
(add-hook 'sgml-mode-hook #'rainbow-delimiters-mode)
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)

;; markdown mode
(autoload 'markdown-mode "markdown-mode"
   "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist
             '("\\.\\(?:md\\|markdown\\|mkd\\|mdown\\|mkdn\\|mdwn\\)\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
   "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(jetbrains-darcula))
 '(custom-safe-themes
   '("82e57dab3f6e6d230d4db0f57be11339830cb9ecd90af730b5c447c83a05bc6c" "ed8e6f452855fc7338c8be77803666b34745c19c6667197db48952107fa6d983" "42abd324628cb258bb8bbb1fc8ebcd4920f6681f616eb1ac80c6f8853258c595" default)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
