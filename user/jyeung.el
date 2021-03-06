(setq org-agenda-files (list "~/orgmode/org-jake/projects.org"
			     "~/orgmode/org-jake/next-actions.org"
			     "~/orgmode/org-jake/someday.org"))
(setq org-default-notes-file "~/orgmode/org-jake/notes.org")
(setq org-clock-idle-time '15)

;;;(find-file "~/orgmode/org-jake/projects.org")
;;;(make-frame-command)
;;;(find-file "~/orgmode/org-jake/next-actions.org")

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
  	(find-file "~/orgmode/org-jake/projects.org")
	(make-frame-command)
	(find-file "~/orgmode/org-jake/next-actions.org")
	(setq column-number-mode t)
	(magit-pull))

(global-set-key "\C-x\C-a" 'magit-push)
(add-hook 'after-init-hook 'open-org-files)
(add-hook 'before-save-hook 'magit-commit)
