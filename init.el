;; Start with evil mode
(load (locate-user-emacs-file "~/.emacs.d/emacs-evil-bootstrap/init.el"))

(add-to-list 'load-path "~/orgmode/jmax")
;; (add-to-list 'load-path "~/.emacs.d/lisp/")

(setq magit-last-seen-setup-instructions "1.4.0")

(setq org-agenda-files (list "~/orgmode/org-jake/projects.org"
			     "~/orgmode/org-jake/next-actions.org"
			     "~/orgmode/org-jake/someday.org"
				 "~/orgmode/org-jake/timekeeping.org"))
(setq org-default-notes-file "~/orgmode/org-jake/notes.org")
(setq org-clock-idle-time '15)
(setq org-archive-location "~/orgmode/org-jake/archive/%s_archive::* Archived Tasks")

;;;(find-file "~/orgmode/org-jake/projects.org")
;;;(make-frame-command)
;;;(find-file "~/orgmode/org-jake/next-actions.org")

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/emacs-color-theme-solarized")
(load-theme 'solarized t)
;;;(custom-set-variables
;;;  '(frame-background-mode (quote dark)))
;;;(enable-theme 'solarized)

(setq user-full-name "Jake Yeung"
      googleid "jakeyeung"
      user-mail-address "jakeyeung@gmail.com"
      ;; specify how email is sent
      send-mail-function 'smtpmail-send-it
      ;; used in message mode
      message-send-mail-function 'smtpmail-send-it
      smtpmail-smtp-server "mail.google.com"
      smtpmail-smtp-service 587)

(setq column-number-mode t)

(defun open-org-files ()
  	(find-file "~/orgmode/org-jake/timekeeping.org")
	(make-frame-command)
	;;(find-file "~/orgmode/org-jake/next-actions.org")
	(setq column-number-mode t)
	;;(magit-pull)
	;;(deft)
)

(global-set-key "\C-x\C-a" 'magit-push)
(global-set-key "\C-x\C-p" 'magit-pull)
(global-set-key "\C-x\C-g" 'magit-commit)
(add-hook 'after-init-hook 'open-org-files)
;;; (add-hook 'before-save-hook 'magit-commit)
;;;
;; active Babel languages
(org-babel-do-load-languages
 'org-babel-load-languages
  '((R . t)
     (sh . t)
        ))

;;; Load deft: http://jonathanchu.is/posts/setting-up-deft-mode-in-emacs-with-org-mode/
(require 'deft)
(global-set-key (kbd "C-x C-g") 'deft-find-file)
(global-set-key "\C-x\C-d" 'deft)
;;(setq deft-extensions "org")
(setq deft-extensions '("org"))
(setq deft-use-filename-as-title t)
(setq deft-auto-save-interval 10)
(setq deft-default-extension "org")

;; Paste image to orgmode https://stackoverflow.com/questions/17435995/paste-an-image-on-clipboard-to-emacs-org-mode-file-without-saving-it
(defun my-org-screenshot ()
  "Take a screenshot into a time stamped unique-named file in the
same directory as the org-buffer and insert a link to this file."
  (interactive)
  (org-display-inline-images)
  (setq filename
        (concat
         (make-temp-name
          (concat (file-name-nondirectory (buffer-file-name))
                  "_imgs/"
                  (format-time-string "%Y%m%d_%H%M%S_")) ) ".png"))
  (unless (file-exists-p (file-name-directory filename))
    (make-directory (file-name-directory filename)))
  ; take screenshot
  (if (eq system-type 'darwin)
      (call-process "screencapture" nil nil nil "-i" filename))
  (if (eq system-type 'gnu/linux)
      (call-process "import" nil nil nil filename))
  ; insert into file if correctly taken
  (if (file-exists-p filename)
    (insert (concat "[[file:" filename "]]"))))

(global-set-key "\C-x\C-t" 'my-org-screenshot)


;; Open timekeeping.org with hotkey
(global-set-key (kbd "C-c o") 
                (lambda () (interactive) (find-file "~/orgmode/org-jake/timekeeping.org")))
