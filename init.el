;;; init.el --- Where all the magic begins
;;
;; Part of the Emacs Starter Kit
;;
;; This is the first thing to get loaded.
;;

;; Configure package.el
;; Install Magit via M-x package-install RET magit RET
(require 'package)
(add-to-list 'package-archives
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
;; org2blog
(setq load-path (cons "~/orgmode/org2blog/" load-path))
(require 'org2blog-autoloads)

;; XML-RPC library
(setq load-path (cons "~/orgmode/" load-path))
(require 'xml-rpc)

;; metaweblog.el Library
(setq load-path (cons "~/orgmode/metaweblog/" load-path))
(require 'metaweblog)

(setq org2blog/wp-blog-alist
      '(("wordpress"
         :url "http://jakeyeung.wordpress.com/xmlrpc.php"
         :username "jakeyeung"
         :default-title "Hello World"
         :default-categories ("org2blog" "emacs")
         :tags-as-categories nil)))

;; remember this directory
(defconst starter-kit-dir (file-name-directory (or load-file-name (buffer-file-name)))
    "directory where the starterkit is installed")

(defvar user-dir (expand-file-name "user" starter-kit-dir)
  "user directory for personal code")

(add-to-list 'load-path starter-kit-dir)
(add-to-list 'load-path user-dir)

;; check status of jmax, and update if needed. 
(let ((default-directory starter-kit-dir))
  (shell-command "git fetch")
  (unless (= 0 (string-to-number
		(shell-command-to-string
		 "git rev-list HEAD...origin/master --count")))
    (when (let ((last-nonmenu-event nil))
	    (y-or-n-p "jmax is not up to date. Update now?"))
      (message "updating jmax now")
      (shell-command "git pull"))))

(require 'packages)
(require 'jmax)
;;; end init

