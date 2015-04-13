;; maximum the frame size when startup
(add-hook 'after-init-hook '(lambda () (w32-send-sys-command #xf030)))

;; set proxy within ericsson's vpn
(setq url-proxy-services '(("no_proxy" . "^\\(localhost\\)")
                           ("http" . "www-proxy.ericsson.se:8080")))

;; set extra load path
(add-to-list 'load-path "~/.emacs.d/elpa/")

(let ((default-directory "~/.emacs.d/elpa/"))
  (normal-top-level-add-subdirs-to-load-path))

;; auto-complete settings
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d//ac-dict")
(ac-config-default)

;; web-mode settings

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; set package pinning
;;(require 'package)
;;(add-to-list 'package-pinned-packages '(magit . "melpa"))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("436ae3105bb26b7e3edbd624612ee3ba929fd568d3b3bd1f72e6aa2b0cab1bb7" "4e262566c3d57706c70e403d440146a5440de056dfaeb3062f004da1711d83fc" default)))
 '(exec-path (quote ("c:/python27/" "c:/Rtools/bin" "c:/Rtools/gcc-4.6.3/bin" "C:/ProgramData/Oracle/Java/javapath" "C:/windows/system32" "C:/windows" "C:/windows/System32/Wbem" "C:/windows/System32/WindowsPowerShell/v1.0/" "C:/windows/system32" "C:/windows" "C:/windows/System32/Wbem" "C:/Program Files (x86)/SQL11/DLL" "C:/Program Files (x86)/SQL11/BIN" "C:/Program Files/Microsoft Network Monitor 3/" "C:/Program Files/Intel/WiFi/bin/" "C:/Program Files/Common Files/Intel/WirelessCommon/" "C:/Program Files/TortoiseSVN/bin" "C:/Program Files (x86)/Git/bin" "C:/Program Files (x86)/IDM Computer Solutions/UltraEdit/" "c:/Program Files (x86)/emacs-24.2-bin-i386/emacs-24.2/bin" "c:/Program Files (x86)/nodejs/")))
 '(package-archives (quote (("gnu" . "http://elpa.gnu.org/packages/") ("melpa" . "http://melpa.org/packages/") ("melpa-stable" . "http://stable.melpa.org/packages/")))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; monokai theme settings
(load-file "~/.emacs.d/elpa/monokai-theme-20150112.442/monokai-theme.el")
(load-theme 'monokai t)
