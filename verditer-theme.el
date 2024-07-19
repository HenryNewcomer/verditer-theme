;;; verditer-theme.el --- A vibrant blue-green Verditer Theme.
;;
;; Filename: verditer-theme.el
;; Description: A vibrant blue-green Verditer Theme.
;; Author: Henry Newcomer
;; Created: 2024-07-15
;; Version: 1.0
;; Keywords: faces themes
;; URL: https://github.com/HenryNewcomer/verditer-theme
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Commentary:
;;
;; This theme features a vibrant mix of blues, greens, and turquoise colors
;; with occasional highlights in orange and pink, matching the website's color scheme.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License as
;; published by the Free Software Foundation; either version 3, or
;; (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;; General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with this program; see the file COPYING.  If not, write to
;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth
;; Floor, Boston, MA 02110-1301, USA.
;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;
;;; Code:

(deftheme verditer "A vibrant blue-green Verditer Theme.")

;; Main background and foreground colors
(defvar color-bg "#0c1c2c")
(defvar color-bg-2 "#1a2a3a")
(defvar color-fg "#43a9ca")
(defvar color-fg-alt "#bcc0cc")
(defvar color-fringe "#0c0e14")

;; Main accent colors
(defvar color-main "#5cffbe")
(defvar color-error "#ff4757")
(defvar color-warning "#ffa502")
(defvar color-keyword "#00a8ff")

;; Search colors
(defvar color-search-bg "#3eb5ff")
(defvar color-search-fg "#000000")

;; Syntax highlighting colors
(defvar color-built-in "#b1e1ff")
(defvar color-preprocessor "#33ffff")
(defvar color-quotes "#2ed573")
(defvar color-elisp-func-desc "#bd593f")
(defvar color-param-names "#9eedc7")
(defvar color-minibuffer-prompt "#00a1ff")
(defvar color-consquotest "#825fab")

;; Comment colors
(defvar color-comment-symbols "#CE6747")
(defvar color-comment-text "#44ADC0")

;; Mode line colors
(defvar color-mode-line-bg "#0c0f15")
(defvar color-mode-line-fg "#7694b0")

;; Other UI element colors
(defvar color-vertical-line "#141923")
(defvar color-types "#a5acc4")
(defvar color-cursor-bg "#f19e64")
(defvar color-cursor-bg-alt "#7cb8e7")
(defvar color-constant "#20905f")
(defvar color-line-number-fg "#28496E")

;; Current line highlighting
(defvar color-current-line-text-area-bg "#141923")
(defvar color-current-line-side-bg "#1c3445")
(defvar color-current-line-side-fg "#b2c5d4")

;; Gradients (Parentheses, org hierarchy, etc.)
(defvar color-gradient0 "#2d9ba2")
(defvar color-gradient1 "#2CAD81")
(defvar color-gradient2 "#2D92D9")
(defvar color-gradient3 "#674593")
(defvar color-gradient4 "#aa17ed")
(defvar color-gradient5 "#3b78d3")

;; Parentheses matching
(defvar color-paren-match-bg "#6b4841")
(defvar color-paren-match-fg "#f19e64")

;; Diff colors
(defvar color-add-fg "#2ed573")
(defvar color-add-bg "#649694")
(defvar color-remove-fg "#ff4757")
(defvar color-remove-bg "#694949")

;; Miscellaneous
(defvar color-number "#834079")
(defvar color-region-bg "#3d78b0")
(defvar color-region-fg "#141923")

;; New colors from website
(defvar color-link-normal "#3eb5ff")
(defvar color-link-hover "#b1e1ff")
(defvar color-toxic "#ff4757")
(defvar color-non-toxic "#2ed573")
(defvar color-moderation "#ffa502")
(defvar color-supervision "#1e90ff")

(custom-theme-set-faces
 'verditer
 `(default ((t (:foreground ,color-fg :background ,color-bg))))
 `(cursor ((t (:background ,color-cursor-bg))))
 `(region ((t (:foreground ,color-region-fg :background ,color-region-bg))))
 `(highlight ((t (:foreground ,color-region-fg :background ,color-region-bg))))
 `(highlight-numbers-number ((t (:foreground ,color-number :weight bold))))
 `(hl-line ((t (:background ,color-current-line-text-area-bg))))
 `(fringe ((t (:background ,color-fringe))))
 `(vertical-border ((t (:foreground ,color-vertical-line))))
 `(border ((t (:background ,color-fringe :foreground ,color-vertical-line))))
 `(mode-line ((t (:foreground ,color-mode-line-fg :background ,color-mode-line-bg :box (:line-width 1 :color ,color-vertical-line)))))
 `(mode-line-inactive ((t (:foreground ,color-fg-alt :background ,color-bg-2 :box (:line-width 1 :color ,color-vertical-line)))))
 `(mode-line-buffer-id ((t (:foreground ,color-main :weight bold))))
 `(mode-line-emphasis ((t (:foreground ,color-warning))))
 `(mode-line-highlight ((t (:foreground ,color-bg :background ,color-main))))
 `(success ((t (:foreground ,color-main :weight bold))))
 `(warning ((t (:foreground ,color-warning :weight bold))))
 `(error ((t (:foreground ,color-error :weight bold))))
 `(link ((t (:foreground ,color-link-normal :underline t :weight bold))))
 `(link-visited ((t (:foreground ,color-consquotest :underline t :weight normal))))
 `(tooltip ((t (:foreground ,color-fg :background ,color-bg-2))))
 `(trailing-whitespace ((t (:foreground ,color-main :weight bold :underline t))))
 `(custom-variable-tag ((t (:foreground ,color-main :weight bold))))
 `(custom-group-tag ((t (:foreground ,color-main :weight bold :height 1.2))))
 `(custom-state ((t (:foreground ,color-main))))

 ;; Font lock faces
 `(font-lock-builtin-face ((t (:foreground ,color-built-in))))
 `(font-lock-comment-face ((t (:foreground ,color-comment-text))))
 `(font-lock-comment-delimiter-face ((t (:foreground ,color-comment-symbols))))
 `(font-lock-constant-face ((t (:foreground ,color-constant))))
 `(font-lock-doc-face ((t (:foreground ,color-elisp-func-desc))))
 `(font-lock-function-name-face ((t (:foreground ,color-main))))
 `(font-lock-keyword-face ((t (:foreground ,color-keyword))))
 `(font-lock-negation-char-face ((t (:foreground ,color-warning))))
 `(font-lock-preprocessor-face ((t (:foreground ,color-preprocessor))))
 `(font-lock-regexp-grouping-backslash ((t (:foreground ,color-warning))))
 `(font-lock-regexp-grouping-construct ((t (:foreground ,color-warning))))
 `(font-lock-string-face ((t (:foreground ,color-quotes))))
 `(font-lock-type-face ((t (:foreground ,color-types))))
 `(font-lock-variable-name-face ((t (:foreground ,color-param-names))))
 `(font-lock-warning-face ((t (:foreground ,color-warning))))

 ;; Button faces
 `(button ((t (:foreground ,color-link-normal :underline t))))

 ;; ido faces
 `(ido-first-match ((t (:foreground ,color-main :weight bold))))
 `(ido-only-match ((t (:foreground ,color-main :weight bold))))
 `(ido-subdir ((t (:foreground ,color-keyword))))
 `(ido-indicator ((t (:foreground ,color-warning :background ,color-bg))))

 ;; isearch faces
 `(isearch ((t (:foreground ,color-search-fg :background ,color-search-bg))))
 `(isearch-fail ((t (:foreground ,color-fg :background ,color-error))))
 `(lazy-highlight ((t (:foreground ,color-search-fg :background ,color-bg-2))))

 ;; show-paren-mode
 `(show-paren-match ((t (:foreground ,color-paren-match-fg :background ,color-paren-match-bg :weight bold))))
 `(show-paren-mismatch ((t (:foreground ,color-main :background ,color-error :weight bold))))

 ;; rainbow-delimiters
 `(rainbow-delimiters-depth-1-face ((t (:foreground ,color-gradient0))))
 `(rainbow-delimiters-depth-2-face ((t (:foreground ,color-gradient1))))
 `(rainbow-delimiters-depth-3-face ((t (:foreground ,color-gradient2))))
 `(rainbow-delimiters-depth-4-face ((t (:foreground ,color-gradient3))))
 `(rainbow-delimiters-depth-5-face ((t (:foreground ,color-gradient4))))
 `(rainbow-delimiters-depth-6-face ((t (:foreground ,color-gradient5))))
 `(rainbow-delimiters-depth-7-face ((t (:foreground ,color-gradient0))))
 `(rainbow-delimiters-depth-8-face ((t (:foreground ,color-gradient1))))
 `(rainbow-delimiters-depth-9-face ((t (:foreground ,color-gradient2))))
 `(rainbow-delimiters-unmatched-face ((t (:foreground ,color-error))))

 ;; line-number
 `(line-number ((t (:foreground ,color-line-number-fg :background ,color-bg))))
 `(line-number-current-line ((t (:foreground ,color-current-line-side-fg :background ,color-current-line-side-bg :weight bold))))

 ;; Magit faces
 `(magit-section-heading        ((t (:foreground ,color-keyword :weight bold))))
 `(magit-section-highlight      ((t (:background ,color-bg-2))))
 `(magit-section-heading-selection ((t (:foreground ,color-warning :background ,color-bg-2))))
 `(magit-diff-file-heading           ((t (:weight bold))))
 `(magit-diff-file-heading-highlight ((t (:background ,color-bg-2))))
 `(magit-diff-file-heading-selection ((t (:foreground ,color-warning :background ,color-bg-2))))
 `(magit-diff-hunk-heading           ((t (:background ,color-bg-2))))
 `(magit-diff-hunk-heading-highlight ((t (:background ,color-current-line-side-bg))))
 `(magit-diff-added             ((t (:foreground ,color-add-fg :background ,color-add-bg))))
 `(magit-diff-added-highlight   ((t (:foreground ,color-add-fg :background ,color-add-bg))))
 `(magit-diff-removed           ((t (:foreground ,color-remove-fg :background ,color-remove-bg))))
 `(magit-diff-removed-highlight ((t (:foreground ,color-remove-fg :background ,color-remove-bg))))
 `(magit-diff-context           ((t (:background ,color-bg))))
 `(magit-diff-context-highlight ((t (:background ,color-bg-2))))
 `(magit-hash                   ((t (:foreground ,color-consquotest))))
 `(magit-branch-remote          ((t (:foreground ,color-main))))
 `(magit-branch-local           ((t (:foreground ,color-keyword))))

 ;; Term faces
 `(term-color-black ((t (:foreground ,color-bg :background ,color-bg))))
 `(term-color-blue ((t (:foreground ,color-keyword :background ,color-keyword))))
 `(term-color-red ((t (:foreground ,color-error :background ,color-error))))
 `(term-color-green ((t (:foreground ,color-main :background ,color-main))))
 `(term-color-yellow ((t (:foreground ,color-warning :background ,color-warning))))
 `(term-color-magenta ((t (:foreground ,color-consquotest :background ,color-consquotest))))
 `(term-color-cyan ((t (:foreground ,color-preprocessor :background ,color-preprocessor))))
 `(term-color-white ((t (:foreground ,color-fg :background ,color-fg))))

 ;; ERC faces
 `(erc-nick-default-face ((t (:foreground ,color-keyword :weight bold))))
 `(erc-my-nick-face ((t (:foreground ,color-main :weight bold))))
 `(erc-current-nick-face ((t (:foreground ,color-main :weight bold))))
 `(erc-notice-face ((t (:foreground ,color-consquotest))))
 `(erc-input-face ((t (:foreground ,color-fg))))
 `(erc-timestamp-face ((t (:foreground ,color-bg-2 :weight bold))))

 ;; org-mode
 `(org-level-1 ((t (:foreground ,color-gradient2 :weight bold :height 1.1))))
 `(org-level-2 ((t (:foreground ,color-gradient1 :weight bold))))
 `(org-level-3 ((t (:foreground ,color-gradient0 :weight bold))))
 `(org-level-4 ((t (:foreground ,color-gradient3 :weight bold))))
 `(org-level-5 ((t (:foreground ,color-gradient4 :weight bold))))
 `(org-level-6 ((t (:foreground ,color-gradient5 :weight bold))))
 `(org-todo ((t (:foreground ,color-error :weight bold))))
 `(org-done ((t (:foreground ,color-main :weight bold))))
 `(org-link ((t (:foreground ,color-link-normal :underline t))))
 `(org-code ((t (:foreground ,color-consquotest))))
 `(org-date ((t (:foreground ,color-built-in :underline t))))
 `(org-block ((t (:foreground ,color-fg :background ,color-bg-2 :extend t))))
 `(org-quote ((t (:foreground ,color-fg :background ,color-bg-2 :extend t))))
 `(org-table ((t (:foreground ,color-fg-alt))))

 ;; which-key
 `(which-key-key-face ((t (:foreground ,color-warning))))
 `(which-key-group-description-face ((t (:foreground ,color-keyword))))
 `(which-key-command-description-face ((t (:foreground ,color-fg))))
 `(which-key-local-map-description-face ((t (:foreground ,color-main))))

 ;; company-mode
 `(company-tooltip ((t (:foreground ,color-fg :background ,color-bg-2))))
 `(company-tooltip-annotation ((t (:foreground ,color-consquotest))))
 `(company-tooltip-annotation-selection ((t (:foreground ,color-consquotest))))
 `(company-tooltip-selection ((t (:foreground ,color-fg :background ,color-keyword))))
 `(company-tooltip-common ((t (:foreground ,color-main :underline t))))
 `(company-tooltip-common-selection ((t (:foreground ,color-main :underline t))))
 `(company-scrollbar-bg ((t (:background ,color-bg-2))))
 `(company-scrollbar-fg ((t (:background ,color-keyword))))
 `(company-preview ((t (:background ,color-bg-2))))
 `(company-preview-common ((t (:foreground ,color-main :background ,color-bg-2))))

 ;; markdown-mode
 `(markdown-header-face-1 ((t (:foreground ,color-gradient2 :weight bold :height 1.1))))
 `(markdown-header-face-2 ((t (:foreground ,color-gradient1 :weight bold))))
 `(markdown-header-face-3 ((t (:foreground ,color-gradient0 :weight bold))))
 `(markdown-header-face-4 ((t (:foreground ,color-gradient3 :weight bold))))
 `(markdown-header-face-5 ((t (:foreground ,color-gradient4 :weight bold))))
 `(markdown-header-face-6 ((t (:foreground ,color-gradient5 :weight bold))))
 `(markdown-bold-face ((t (:foreground ,color-main :weight bold))))
 `(markdown-italic-face ((t (:foreground ,color-consquotest :slant italic))))
 `(markdown-link-face ((t (:foreground ,color-link-normal))))
 `(markdown-url-face ((t (:foreground ,color-built-in))))
 `(markdown-header-delimiter-face ((t (:foreground ,color-keyword))))
 `(markdown-pre-face ((t (:foreground ,color-consquotest))))
 `(markdown-code-face ((t (:foreground ,color-consquotest))))

 ;; ivy-mode
 `(ivy-current-match ((t (:foreground ,color-fg :background ,color-keyword))))
 `(ivy-minibuffer-match-face-1 ((t (:foreground ,color-main))))
 `(ivy-minibuffer-match-face-2 ((t (:foreground ,color-main :underline t))))
 `(ivy-minibuffer-match-face-3 ((t (:foreground ,color-main))))
 `(ivy-minibuffer-match-face-4 ((t (:foreground ,color-main :underline t))))
 `(ivy-confirm-face ((t (:foreground ,color-main))))
 `(ivy-match-required-face ((t (:foreground ,color-error))))
 `(ivy-virtual ((t (:foreground ,color-consquotest))))
 `(ivy-action ((t (:foreground ,color-keyword))))

 ;; flycheck
 `(flycheck-error ((t (:underline (:style wave :color ,color-error)))))
 `(flycheck-warning ((t (:underline (:style wave :color ,color-warning)))))
 `(flycheck-info ((t (:underline (:style wave :color ,color-keyword)))))
 `(flycheck-fringe-error ((t (:foreground ,color-error))))
 `(flycheck-fringe-warning ((t (:foreground ,color-warning))))
 `(flycheck-fringe-info ((t (:foreground ,color-keyword))))

 ;; dired
 `(dired-directory ((t (:foreground ,color-keyword))))
 `(dired-flagged ((t (:foreground ,color-error))))
 `(dired-symlink ((t (:foreground ,color-consquotest))))

 ;; helm
 `(helm-header ((t (:foreground ,color-fg :background ,color-bg-2 :underline nil :box nil))))
 `(helm-source-header ((t (:foreground ,color-keyword :background ,color-bg-2 :underline nil :weight bold))))
 `(helm-selection ((t (:background ,color-keyword :foreground ,color-bg))))
 `(helm-selection-line ((t (:background ,color-bg-2))))
 `(helm-visible-mark ((t (:foreground ,color-bg :background ,color-main))))
 `(helm-candidate-number ((t (:foreground ,color-keyword :background ,color-bg))))
 `(helm-separator ((t (:foreground ,color-consquotest :background ,color-bg))))
 `(helm-time-zone-current ((t (:foreground ,color-keyword :background ,color-bg))))
 `(helm-time-zone-home ((t (:foreground ,color-consquotest :background ,color-bg))))
 `(helm-buffer-not-saved ((t (:foreground ,color-consquotest :background ,color-bg))))
 `(helm-buffer-process ((t (:foreground ,color-built-in :background ,color-bg))))
 `(helm-buffer-saved-out ((t (:foreground ,color-fg :background ,color-bg))))
 `(helm-buffer-size ((t (:foreground ,color-fg-alt :background ,color-bg))))
 `(helm-ff-directory ((t (:foreground ,color-keyword :background ,color-bg :weight bold))))
 `(helm-ff-file ((t (:foreground ,color-fg :background ,color-bg :weight normal))))
 `(helm-ff-executable ((t (:foreground ,color-main :background ,color-bg :weight normal))))
 `(helm-ff-invalid-symlink ((t (:foreground ,color-error :background ,color-bg :weight bold))))
 `(helm-ff-symlink ((t (:foreground ,color-consquotest :background ,color-bg :weight bold))))
 `(helm-ff-prefix ((t (:foreground ,color-bg :background ,color-keyword :weight normal))))
 `(helm-grep-cmd-line ((t (:foreground ,color-keyword :background ,color-bg))))
 `(helm-grep-file ((t (:foreground ,color-fg :background ,color-bg))))
 `(helm-grep-finish ((t (:foreground ,color-main :background ,color-bg))))
 `(helm-grep-lineno ((t (:foreground ,color-fg-alt :background ,color-bg))))
 `(helm-grep-match ((t (:foreground nil :background nil :inherit helm-match))))
 `(helm-grep-running ((t (:foreground ,color-consquotest :background ,color-bg))))
 `(helm-moccur-buffer ((t (:foreground ,color-keyword :background ,color-bg))))
 `(helm-source-go-package-godoc-description ((t (:foreground ,color-fg))))
 `(helm-bookmark-w3m ((t (:foreground ,color-consquotest))))

 ;; web-mode
 `(web-mode-html-tag-face ((t (:foreground ,color-keyword))))
 `(web-mode-html-attr-name-face ((t (:foreground ,color-consquotest))))
 `(web-mode-html-attr-value-face ((t (:foreground ,color-main))))
 `(web-mode-comment-face ((t (:foreground ,color-comment-text))))
 `(web-mode-server-comment-face ((t (:foreground ,color-comment-text))))
 `(web-mode-css-rule-face ((t (:foreground ,color-consquotest))))
 `(web-mode-css-pseudo-class-face ((t (:foreground ,color-main))))
 `(web-mode-css-property-name-face ((t (:foreground ,color-keyword))))
 `(web-mode-css-selector-face ((t (:foreground ,color-keyword))))
 `(web-mode-built-in-face ((t (:foreground ,color-consquotest))))
 `(web-mode-keyword-face ((t (:foreground ,color-keyword))))
 `(web-mode-function-name-face ((t (:foreground ,color-main))))
 `(web-mode-variable-name-face ((t (:foreground ,color-consquotest))))
 `(web-mode-css-color-face ((t (:foreground ,color-main))))
 `(web-mode-type-face ((t (:foreground ,color-consquotest))))
 `(web-mode-html-tag-bracket-face ((t (:foreground ,color-keyword))))

 ;; neotree
 `(neo-root-dir-face ((t (:foreground ,color-keyword :weight bold))))
 `(neo-dir-link-face ((t (:foreground ,color-keyword))))
 `(neo-file-link-face ((t (:foreground ,color-fg))))
 `(neo-expand-btn-face ((t (:foreground ,color-main))))

 ;; eshell
 `(eshell-prompt ((t (:foreground ,color-keyword :weight bold))))
 `(eshell-ls-directory ((t (:foreground ,color-keyword :weight bold))))
 `(eshell-ls-symlink ((t (:foreground ,color-consquotest :weight bold))))
 `(eshell-ls-executable ((t (:foreground ,color-main :weight bold))))

 ;; whitespace
 `(whitespace-empty ((t (:foreground ,color-error :background ,color-warning))))
 `(whitespace-indentation ((t (:foreground ,color-warning :background ,color-bg-2))))
 `(whitespace-line ((t (:background ,color-bg-2))))
 `(whitespace-newline ((t (:foreground ,color-bg-2 :weight bold))))
 `(whitespace-space ((t (:foreground ,color-bg-2))))
 `(whitespace-space-after-tab ((t (:foreground ,color-warning :background ,color-bg-2))))
 `(whitespace-space-before-tab ((t (:foreground ,color-warning :background ,color-bg-2))))
 `(whitespace-tab ((t (:foreground ,color-bg-2 :background ,color-bg-2))))
 `(whitespace-trailing ((t (:foreground ,color-error :background ,color-bg-2 :weight bold))))

 ;; Toxicity-related faces (new)
 `(verditer-toxic ((t (:foreground ,color-toxic :weight bold))))
 `(verditer-non-toxic ((t (:foreground ,color-non-toxic :weight bold))))
 `(verditer-moderation ((t (:foreground ,color-moderation :weight bold))))
 `(verditer-supervision ((t (:foreground ,color-supervision :weight bold))))

 ;; Additional faces (new)
 `(verditer-highlight ((t (:background ,color-link-normal :foreground ,color-bg))))
 `(verditer-dimmed ((t (:foreground ,color-fg-alt))))
 )

;; Set variables
(custom-theme-set-variables
 'verditer
 `(ansi-color-names-vector
   [,color-bg ,color-error ,color-main ,color-warning
    ,color-keyword ,color-consquotest ,color-built-in ,color-fg]))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

;;;###autoload
(defun verditer-theme()
  "Apply the Verditer theme."
  (interactive)
  (load-theme 'verditer t))

(provide-theme 'verditer)

;;; verditer-theme.el ends here
