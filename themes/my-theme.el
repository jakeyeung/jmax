(deftheme my "created 12/9/2012")

; custom faces
(custom-theme-set-faces
 'my
 '(default ((t (:family "Courier New" 
		:foundry "outline" 
		:width normal :height 98 :weight normal :slant normal
		:height 100
		:underline nil :overline nil :strike-through nil :box nil
		:inverse-video nil 
		:foreground "black" :background "gray80" 
		:stipple nil :inherit nil))))
 
 '(font-latex-bold-face ((t (nil))))
 '(font-latex-italic-face ((t (:italic t :foreground "DarkOliveGreen" :slant italic))))
 '(font-latex-math-face ((t (:foreground "SaddleBrown"))))
 '(font-latex-sedate-face ((t (:foreground "Gray85"))))
 '(font-latex-string-face ((t (:foreground "orange"))))
 '(font-latex-warning-face ((t (:foreground "gold"))))
 '(font-lock-builtin-face ((t (:foreground "red3"))))
 '(font-lock-comment-delimiter-face ((t (nil))))
 '(font-lock-comment-face ((t (:bold t :foreground "red" :weight bold))))
 '(font-lock-constant-face ((t (:foreground "red3"))))
 '(font-lock-doc-face ((t (:foreground "forest green" ))))
 '(font-lock-doc-string-face ((t (:foreground "forest green" :weight bold))))
 '(font-lock-exit-face ((t (:foreground "green"))))
 '(font-lock-function-name-face ((t (:foreground "brown4"))))
 '(font-lock-keyword-face ((t (:foreground "red4"))))
 '(font-lock-negation-char-face ((t (nil))))
 '(font-lock-preprocessor-face ((t (:bold t :foreground "blue3" :weight bold))))
 '(font-lock-reference-face ((t (:foreground "red3"))))
 '(font-lock-regexp-grouping-backslash ((t (nil))))
 '(font-lock-regexp-grouping-construct ((t (nil))))
 '(font-lock-string-face ((t (:foreground "forest green"))))
 '(font-lock-type-face ((t (:foreground "steelblue"))))
 '(font-lock-variable-name-face ((t (:foreground "magenta4"))))
 '(font-lock-warning-face ((t (:bold t :foreground "Red" :weight bold))))
 ;; org faces
 '(org-link ((t (:underline t :foreground "blue" :weight bold))))
 '(org-tag  ((t (:foreground "orange red"))))
 '(org-block-begin-line ((t (:foreground "red" :weight bold :bold t ))))
 '(org-block-end-line ((t (:foreground "red" :weight bold :bold t))))
 '(org-table ((t (:foreground "blue3"))))
 '(org-document-title ((t (:foreground "black"  :scale 1.44))))
 '(org-level-1 ((t (:foreground "RoyalBlue4" :scale 1.2))))
 '(org-level-2 ((t (:foreground "RoyalBlue3" :scale 1.1))))
 '(org-level-3 ((t (:foreground "RoyalBlue2" :scale 1.05))))
 '(org-level-4 ((t (:foreground "RoyalBlue1" :scale 1.00))))
 '(flyspell-duplicate ((t (:foreground "red" :underline t :weight bold)))))

(provide-theme 'my)

