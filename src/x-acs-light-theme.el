;;; x-acs-light-theme.el --- X-ACS light theme -*- lexical-binding: t; -*-

;; Copyright (C) 2023 X-ACS

;; Author: Sidney PEPO <sidneypepo@disroot.org>

;; Version: 20231210
;; Keywords: themes, theme, x-acs, light

;; This file is not part of GNU Emacs.

;; This program is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 3 of the License, or
;; (at your option) any later version.

;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with this program. If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:

;; X-ACS light theme for GNU Emacs.

;;; Code:

;; Theme declaration with a comment.
(deftheme x-acs-light
  "X-ACS light theme for GNU Emacs.")

;; Variables set for GNU Emacs and some packages work better with this theme.
(custom-theme-set-variables 'x-acs-light
 '(frame-background-mode 'light)
 '(org-n-level-faces 6)
 '(rainbow-delimiters-max-face-count 6))

;; Local variables to store X-ACS colors and them applied on some GNU Emacs (and packages) faces.
(let* ((class '((class color) (min-colors 89))) ; This variable is just to avoid every face customization
						; line from being too long and hard to read.

       ;; X-ACS color scheme.
       (x-acs-black         "#EEE")
       (x-acs-red           "#F22")
       (x-acs-green         "#0D5")
       (x-acs-dark-yellow   "#FB1")
       (x-acs-blue          "#16F")
       (x-acs-magenta       "#D3F")
       (x-acs-cyan          "#0CE")
       (x-acs-light-gray    "#444")
       (x-acs-dark-gray     "#BBB")
       (x-acs-light-red     "#C00")
       (x-acs-light-green   "#0A2")
       (x-acs-yellow        "#C80")
       (x-acs-light-blue    "#03C")
       (x-acs-light-magenta "#A0C")
       (x-acs-light-cyan    "#09B")
       (x-acs-white         "#111")

       ;; Default colors.
       (background     x-acs-black)
       (background-alt x-acs-dark-gray)
       (error          x-acs-red)
       (foreground     x-acs-white)
       (foreground-alt x-acs-light-gray)
       (success        x-acs-green)
       (warning        x-acs-yellow))

  ;; Faces set with variables.
  (custom-theme-set-faces
   'x-acs-light

   ;; Faces format:
   ;; `(face-name ((,class (:attribute1 value1 :attribute2 value2 :attribute3 value3...))))

   ;;;; GNU Emacs Faces.

   ;; Default face.
   `(default ((,class (:background ,background :foreground ,foreground))))

   ;; Basic Faces.
   `(cursor                   ((,class (:background ,foreground-alt :foreground ,background))))
   `(eshell-prompt            ((,class (:foreground ,x-acs-light-green :weight black))))
   `(escape-glyph             ((,class (:foreground ,warning))))
   `(error                    ((,class (:foreground ,error))))
   `(fringe                   ((,class (:background ,background-alt))))
   `(help-key-binding         ((,class (:background ,background-alt :foreground ,foreground))))
   `(highlight                ((,class (:background ,foreground-alt :foreground ,background :underline t))))
   `(homoglyph                ((,class (:foreground ,warning))))
   `(info-menu-star           ((,class (:foreground ,foreground))))
   `(isearch                  ((,class (:background ,foreground-alt :foreground ,background))))
   `(lazy-highlight           ((,class (:background ,background-alt :foreground ,foreground))))
   `(line-number              ((,class (:foreground ,background-alt :inherit default))))
   `(line-number-current-line ((,class (:foreground ,foreground-alt :inherit default))))
   `(link                     ((,class (:foreground ,x-acs-light-cyan :underline t))))
   `(link-visited             ((,class (:foreground ,x-acs-light-magenta :underline t))))
   `(minibuffer-prompt        ((,class (:foreground ,x-acs-light-magenta))))
   `(mode-line                ((,class (:background ,background-alt :foreground ,foreground))))
   `(mode-line-buffer-id      ((,class (:foreground ,foreground))))
   `(mode-line-highlight      ((,class (:inverse-video t))))
   `(mode-line-inactive       ((,class (:background ,background-alt :foreground ,foreground))))
   `(region                   ((,class (:background ,background-alt))))
   `(secondary-selection      ((,class (:background ,warning :foreground ,background))))
   `(shadow                   ((,class (:foreground ,foreground-alt))))
   `(success                  ((,class (:foreground ,success))))
   `(widget-field             ((,class (:background ,background-alt :foreground ,foreground))))
   `(widget-inactive          ((,class (:background ,foreground-alt :foreground ,background-alt))))

   ;; Font Lock Faces.
   `(font-lock-builtin-face       ((,class (:foreground ,x-acs-light-magenta :slant italic))))
   `(font-lock-comment-face       ((,class (:foreground ,x-acs-light-blue))))
   `(font-lock-constant-face      ((,class (:foreground ,x-acs-yellow :slant italic))))
   `(font-lock-function-name-face ((,class (:foreground ,x-acs-light-red :slant italic))))
   `(font-lock-keyword-face       ((,class (:foreground ,x-acs-light-magenta))))
   `(font-lock-string-face        ((,class (:inherit font-lock-constant-face))))
   `(font-lock-type-face          ((,class (:foreground ,x-acs-light-green))))
   `(font-lock-variable-name-face ((,class (:foreground ,x-acs-light-cyan :slant italic))))
   `(font-lock-warning-face       ((,class (:foreground ,warning))))

   ;; Ansi Colors.
   `(ansi-color-black          ((,class (:background ,x-acs-black :foreground ,x-acs-black))))
   `(ansi-color-red            ((,class (:background ,x-acs-red :foreground ,x-acs-red))))
   `(ansi-color-green          ((,class (:background ,x-acs-green :foreground ,x-acs-green))))
   `(ansi-color-yellow         ((,class (:background ,x-acs-dark-yellow :foreground ,x-acs-dark-yellow))))
   `(ansi-color-blue           ((,class (:background ,x-acs-blue :foreground ,x-acs-blue))))
   `(ansi-color-magenta        ((,class (:background ,x-acs-magenta :foreground ,x-acs-magenta))))
   `(ansi-color-cyan           ((,class (:background ,x-acs-cyan :foreground ,x-acs-cyan))))
   `(ansi-color-white          ((,class (:background ,x-acs-light-gray :foreground ,x-acs-light-gray))))
   `(ansi-color-bright-black   ((,class (:background ,x-acs-dark-gray :foreground ,x-acs-dark-gray))))
   `(ansi-color-bright-red     ((,class (:background ,x-acs-light-red :foreground ,x-acs-light-red))))
   `(ansi-color-bright-green   ((,class (:background ,x-acs-light-green :foreground ,x-acs-light-green))))
   `(ansi-color-bright-yellow  ((,class (:background ,x-acs-yellow :foreground ,x-acs-yellow))))
   `(ansi-color-bright-blue    ((,class (:background ,x-acs-light-blue :foreground ,x-acs-light-blue))))
   `(ansi-color-bright-magenta ((,class (:background ,x-acs-light-magenta :foreground ,x-acs-light-magenta))))
   `(ansi-color-bright-cyan    ((,class (:background ,x-acs-light-cyan :foreground ,x-acs-light-cyan))))
   `(ansi-color-bright-white   ((,class (:background ,x-acs-white :foreground ,x-acs-white))))

   ;; Custom Faces.
   `(custom-button                  ((,class (:background ,foreground-alt :foreground ,background :weight black))))
   `(custom-button-mouse            ((,class (:background ,foreground :foreground ,background-alt :weight black))))
   `(custom-button-pressed          ((,class (:background ,background-alt :foreground ,foreground :weight black))))
   `(custom-button-pressed-unraised ((,class (:foreground ,x-acs-light-magenta :underline t))))
   `(custom-group-tag               ((,class (:foreground ,x-acs-light-cyan :weight black :inherit variable-pitch))))
   `(custom-group-tag-1             ((,class (:foreground ,x-acs-light-magenta :inherit custom-group-tag))))
   `(custom-state                   ((,class (:foreground ,x-acs-light-green))))
   `(custom-variable-tag            ((,class (:foreground ,x-acs-light-cyan :weight black))))
   `(custom-visibility              ((,class (:foreground ,x-acs-light-cyan :underline t))))

   ;; Font Latex Highlighting Faces.
   `(font-latex-bold-face         ((,class (:weight black))))
   `(font-latex-italic-face       ((,class (:slant italic))))
   `(font-latex-math-face         ((,class (:foreground ,foreground-alt :inherit default))))
   `(font-latex-script-char-face  ((,class (:foreground ,x-acs-light-magenta :weight black))))
   `(font-latex-sectioning-0-face ((,class (:foreground ,x-acs-light-red :weight black))))
   `(font-latex-sectioning-1-face ((,class (:foreground ,x-acs-yellow :weight black))))
   `(font-latex-sectioning-2-face ((,class (:foreground ,x-acs-light-green :weight black))))
   `(font-latex-sectioning-3-face ((,class (:foreground ,x-acs-light-blue :weight black))))
   `(font-latex-sectioning-4-face ((,class (:foreground ,x-acs-light-cyan :weight black))))
   `(font-latex-sectioning-5-face ((,class (:foreground ,x-acs-light-magenta :weight black))))
   `(font-latex-sedate-face       ((,class (:foreground ,foreground-alt))))
   `(font-latex-slide-title-face  ((,class (:foreground ,x-acs-light-red :weight black))))
   `(font-latex-string-face       ((,class (:foreground ,x-acs-yellow :slant italic))))
   `(font-latex-subscript-face    ((,class)))
   `(font-latex-superscript-face  ((,class)))
   `(font-latex-underline-face    ((,class (:underline t))))
   `(font-latex-verbatim-face     ((,class (:inherit font-latex-math-face))))
   `(font-latex-warning-face      ((,class (:foreground ,warning))))

   ;; Gnus.
   `(gnus-group-news-1           ((,class (:foreground ,x-acs-light-red :weight black))))
   `(gnus-group-news-1-low       ((,class (:foreground ,x-acs-light-red))))
   `(gnus-group-news-2           ((,class (:foreground ,x-acs-yellow :weight black))))
   `(gnus-group-news-2-low       ((,class (:foreground ,x-acs-yellow))))
   `(gnus-group-news-3           ((,class (:foreground ,x-acs-light-green :weight black))))
   `(gnus-group-news-3-low       ((,class (:foreground ,x-acs-light-green))))
   `(gnus-group-news-4           ((,class (:foreground ,x-acs-light-blue :weight black))))
   `(gnus-group-news-4-low       ((,class (:foreground ,x-acs-light-blue))))
   `(gnus-group-news-5           ((,class (:foreground ,x-acs-light-magenta :weight black))))
   `(gnus-group-news-5-low       ((,class (:foreground ,x-acs-light-magenta))))
   `(gnus-group-news-low         ((,class (:foreground ,foreground-alt))))
   `(gnus-group-mail-1           ((,class (:foreground ,x-acs-light-red :weight black))))
   `(gnus-group-mail-1-low       ((,class (:foreground ,x-acs-light-red))))
   `(gnus-group-mail-1-empty     ((,class (:foreground ,foreground-alt))))
   `(gnus-group-mail-2           ((,class (:foreground ,x-acs-light-green :weight black))))
   `(gnus-group-mail-2-low       ((,class (:foreground ,x-acs-light-green))))
   `(gnus-group-mail-2-empty     ((,class (:foreground ,foreground-alt))))
   `(gnus-group-mail-3           ((,class (:foreground ,x-acs-light-blue :weight black))))
   `(gnus-group-mail-3-low       ((,class (:foreground ,x-acs-light-blue))))
   `(gnus-group-mail-3-empty     ((,class (:foreground ,foreground-alt))))
   `(gnus-group-mail-low         ((,class (:foreground ,foreground-alt))))
   `(gnus-header-content         ((,class (:foreground ,x-acs-yellow :slant italic))))
   `(gnus-header-from            ((,class (:foreground ,x-acs-light-cyan :slant italic))))
   `(gnus-header-name            ((,class (:foreground ,x-acs-light-green :weight black))))
   `(gnus-header-newsgroups      ((,class (:foreground ,x-acs-light-cyan))))
   `(gnus-header-subject         ((,class (:foreground ,x-acs-light-cyan :weight black))))
   `(gnus-server-opened          ((,class (:foreground ,x-acs-light-green :weight black))))
   `(gnus-server-closed          ((,class (:foreground ,x-acs-light-blue :slant italic))))
   `(gnus-summary-cancelled      ((,class (:foreground ,x-acs-light-red :extend t))))
   `(gnus-summary-normal-ancient ((,class (:foreground ,x-acs-light-blue :extend t))))
   `(gnus-summary-normal-read    ((,class (:foreground ,x-acs-light-cyan :extend t))))
   `(gnus-summary-selected       ((,class (:foreground ,x-acs-light-cyan :underline t :extend t))))

   ;; Message Faces.
   `(message-cited-text          ((,class (:foreground ,foreground-alt))))
   `(message-cited-text-1        ((,class (:inherit message-cited-text))))
   `(message-cited-text-2        ((,class (:foreground ,x-acs-dark-yellow))))
   `(message-cited-text-3        ((,class (:foreground ,x-acs-cyan))))
   `(message-cited-text-4        ((,class (:foreground ,x-acs-green))))
   `(message-header-cc           ((,class (:inherit message-header-to))))
   `(message-header-name         ((,class (:foreground ,x-acs-light-green :weight black))))
   `(message-header-newsgroups   ((,class (:inherit message-header-to))))
   `(message-header-other        ((,class (:foreground ,x-acs-yellow :slant italic))))
   `(message-header-subject      ((,class (:foreground ,x-acs-light-cyan :weight black))))
   `(message-header-to           ((,class (:foreground ,x-acs-light-cyan :slant italic))))
   `(message-mml                 ((,class (:foreground ,x-acs-light-red))))
   `(message-separator           ((,class (:foreground ,x-acs-light-magenta :weight black))))
   `(message-signature-separator ((,class (:inherit message-separator))))

   ;; Paren Showing Faces.
   `(show-paren-match            ((,class (:inverse-video t))))
   `(show-paren-match-expression ((,class (:inverse-video t))))
   `(show-paren-mismatch         ((,class (:inverse-video t))))

   ;; Popup.
   `(popup-face ((,class (:background ,foreground-alt :foreground ,background))))
   `(popup-isearch-match ((,class (:background ,background-alt :foreground ,foreground))))
   `(popup-menu-mouse-face ((,class (:background ,x-acs-light-blue :foreground ,background :weight black))))
   `(popup-menu-selection-face ((,class (:background ,x-acs-light-cyan :foreground ,background :weight black))))
   `(popup-scroll-bar-background-face ((,class (:background ,background-alt))))
   `(popup-scroll-bar-foreground-face ((,class (:background ,background))))
   `(popup-summary-face ((,class (:background ,foreground-alt :foreground ,background-alt))))
   `(popup-tip-face ((,class (:background ,x-acs-yellow :foreground ,background))))

   ;; Sh Indentation.
   `(sh-heredoc     ((,class (:foreground ,warning))))
   `(sh-quoted-exec ((,class (:foreground ,foreground-alt))))

   ;; Tab Bar Faces.
   `(tab-bar                  ((,class (:background ,background-alt))))
   `(tab-bar-tab              ((,class (:background ,background :foreground ,foreground :weight black))))
   `(tab-bar-tab-inactive     ((,class (:background ,background-alt :foreground ,foreground-alt))))

   ;; Tab Line Faces.
   `(tab-line                  ((,class (:background ,background-alt))))
   `(tab-line-highlight        ((,class (:background ,foreground :foreground ,background-alt))))
   `(tab-line-tab              ((,class (:background ,background :foreground ,foreground :weight black))))
   `(tab-line-tab-current      ((,class (:background ,background :foreground ,foreground :weight black))))
   `(tab-line-tab-modified     ((,class (:foreground ,warning))))
   `(tab-line-tab-inactive     ((,class (:background ,background-alt :foreground ,foreground-alt))))
   `(tab-line-tab-special      ((,class (:inherit tab-line-tab-inactive))))

   ;; Whitespace.
   `(whitespace-big-indent             ((,class (:background ,error :foreground ,error))))
   `(whitespace-empty                  ((,class (:background ,warning :foreground ,error))))
   `(whitespace-hspace                 ((,class (:background ,background-alt :foreground ,foreground-alt))))
   `(whitespace-indentation            ((,class (:inherit whitespace-empty))))
   `(whitespace-line                   ((,class (:background ,background-alt :foreground ,warning))))
   `(whitespace-missing-newline-at-eof ((,class (:background ,warning :foreground ,background-alt))))
   `(whitespace-newline                ((,class (:foreground ,background-alt))))
   `(whitespace-space                  ((,class (:inherit whitespace-hspace))))
   `(whitespace-space-after-tab        ((,class (:inherit whitespace-empty))))
   `(whitespace-space-before-tab       ((,class (:background ,error :foreground ,warning))))
   `(whitespace-tab                    ((,class (:inherit whitespace-hspace))))
   `(whitespace-trailing               ((,class (:inherit whitespace-space-before-tab))))

   ;;;; End of GNU Emacs Faces.

   ;;;; Packages Faces.

   ;; All The Icons Faces.
   `(all-the-icons-blue       ((,class (:foreground ,x-acs-light-blue))))
   `(all-the-icons-blue-alt   ((,class (:foreground ,x-acs-blue))))
   `(all-the-icons-cyan       ((,class (:foreground ,x-acs-light-cyan))))
   `(all-the-icons-cyan-alt   ((,class (:foreground ,x-acs-cyan))))
   `(all-the-icons-dblue      ((,class (:foreground ,x-acs-blue))))
   `(all-the-icons-dcyan      ((,class (:foreground ,x-acs-cyan))))
   `(all-the-icons-dgreen     ((,class (:foreground ,x-acs-green))))
   `(all-the-icons-dmaroon    ((,class (:foreground ,x-acs-dark-yellow))))
   `(all-the-icons-dorange    ((,class (:foreground ,x-acs-dark-yellow))))
   `(all-the-icons-dpink      ((,class (:foreground ,x-acs-magenta))))
   `(all-the-icons-dpurple    ((,class (:foreground ,x-acs-magenta))))
   `(all-the-icons-dred       ((,class (:foreground ,x-acs-red))))
   `(all-the-icons-dsilver    ((,class (:foreground ,x-acs-dark-gray))))
   `(all-the-icons-dyellow    ((,class (:foreground ,x-acs-dark-yellow))))
   `(all-the-icons-green      ((,class (:foreground ,x-acs-light-green))))
   `(all-the-icons-lblue      ((,class (:foreground ,x-acs-light-blue))))
   `(all-the-icons-lcyan      ((,class (:foreground ,x-acs-light-cyan))))
   `(all-the-icons-lgreen     ((,class (:foreground ,x-acs-light-green))))
   `(all-the-icons-lmaroon    ((,class (:foreground ,x-acs-yellow))))
   `(all-the-icons-lorange    ((,class (:foreground ,x-acs-yellow))))
   `(all-the-icons-lpink      ((,class (:foreground ,x-acs-light-magenta))))
   `(all-the-icons-lpurple    ((,class (:foreground ,x-acs-light-magenta))))
   `(all-the-icons-lred       ((,class (:foreground ,x-acs-light-red))))
   `(all-the-icons-lsilver    ((,class (:foreground ,x-acs-light-gray))))
   `(all-the-icons-lyellow    ((,class (:foreground ,x-acs-yellow))))
   `(all-the-icons-maroon     ((,class (:foreground ,x-acs-yellow))))
   `(all-the-icons-orange     ((,class (:foreground ,x-acs-yellow))))
   `(all-the-icons-pink       ((,class (:foreground ,x-acs-light-magenta))))
   `(all-the-icons-purple     ((,class (:foreground ,x-acs-light-magenta))))
   `(all-the-icons-purple-alt ((,class (:foreground ,x-acs-magenta))))
   `(all-the-icons-red        ((,class (:foreground ,x-acs-light-red))))
   `(all-the-icons-red-alt    ((,class (:foreground ,x-acs-red))))
   `(all-the-icons-silver     ((,class (:foreground ,x-acs-light-gray))))
   `(all-the-icons-yellow     ((,class (:foreground ,x-acs-yellow))))

   ;; Doom Modeline Faces.
   `(doom-modeline-battery-charging   ((,class (:foreground ,x-acs-light-green))))
   `(doom-modeline-battery-full       ((,class (:foreground ,x-acs-light-green))))
   `(doom-modeline-highlight          ((,class (:inverse-video t))))
   `(doom-modeline-buffer-major-mode  ((,class (:foreground ,x-acs-light-magenta :weight black))))
   `(doom-modeline-buffer-minor-mode  ((,class (:foreground ,x-acs-light-cyan))))
   `(doom-modeline-buffer-modified    ((,class (:foreground ,warning))))
   `(doom-modeline-overwrite          ((,class (:foreground ,x-acs-light-red))))
   `(doom-modeline-project-dir        ((,class (:foreground ,x-acs-light-cyan :slant italic))))
   `(doom-modeline-project-parent-dir ((,class (:foreground ,x-acs-light-blue))))
   `(doom-modeline-project-root-dir   ((,class (:foreground ,foreground :weight black))))
   `(doom-modeline-warning            ((,class (:foreground ,warning))))

   ;; Ivy Faces.
   `(ivy-confirm-face            ((,class (:inherit ivy-grep-info))))
   `(ivy-current-match           ((,class (:background ,foreground-alt :foreground ,background))))
   `(ivy-cursor                  ((,class (:background ,foreground-alt))))
   `(ivy-match-required-face     ((,class (:foreground ,error))))
   `(ivy-minibuffer-match-face-1 ((,class (:background ,background-alt :foreground ,foreground))))
   `(ivy-minibuffer-match-face-2 ((,class (:inherit ivy-minibuffer-match-face-1))))
   `(ivy-minibuffer-match-face-3 ((,class (:inherit ivy-minibuffer-match-face-1))))
   `(ivy-minibuffer-match-face-4 ((,class (:inherit ivy-minibuffer-match-face-1))))

   ;; Neotree.
   `(neo-dir-link-face ((,class (:foreground ,x-acs-light-red :slant italic))))
   `(neo-root-dir-face ((,class (:foreground ,x-acs-light-green))))

   ;; Nerd Icons Faces.
   `(nerd-icons-blue       ((,class (:foreground ,x-acs-light-blue))))
   `(nerd-icons-blue-alt   ((,class (:foreground ,x-acs-blue))))
   `(nerd-icons-cyan       ((,class (:foreground ,x-acs-light-cyan))))
   `(nerd-icons-cyan-alt   ((,class (:foreground ,x-acs-cyan))))
   `(nerd-icons-dblue      ((,class (:foreground ,x-acs-blue))))
   `(nerd-icons-dcyan      ((,class (:foreground ,x-acs-cyan))))
   `(nerd-icons-dgreen     ((,class (:foreground ,x-acs-green))))
   `(nerd-icons-dmaroon    ((,class (:foreground ,x-acs-dark-yellow))))
   `(nerd-icons-dorange    ((,class (:foreground ,x-acs-dark-yellow))))
   `(nerd-icons-dpink      ((,class (:foreground ,x-acs-magenta))))
   `(nerd-icons-dpurple    ((,class (:foreground ,x-acs-magenta))))
   `(nerd-icons-dred       ((,class (:foreground ,x-acs-red))))
   `(nerd-icons-dsilver    ((,class (:foreground ,x-acs-dark-gray))))
   `(nerd-icons-dyellow    ((,class (:foreground ,x-acs-dark-yellow))))
   `(nerd-icons-green      ((,class (:foreground ,x-acs-light-green))))
   `(nerd-icons-lblue      ((,class (:foreground ,x-acs-light-blue))))
   `(nerd-icons-lcyan      ((,class (:foreground ,x-acs-light-cyan))))
   `(nerd-icons-lgreen     ((,class (:foreground ,x-acs-light-green))))
   `(nerd-icons-lmaroon    ((,class (:foreground ,x-acs-yellow))))
   `(nerd-icons-lorange    ((,class (:foreground ,x-acs-yellow))))
   `(nerd-icons-lpink      ((,class (:foreground ,x-acs-light-magenta))))
   `(nerd-icons-lpurple    ((,class (:foreground ,x-acs-light-magenta))))
   `(nerd-icons-lred       ((,class (:foreground ,x-acs-light-red))))
   `(nerd-icons-lsilver    ((,class (:foreground ,x-acs-light-gray))))
   `(nerd-icons-lyellow    ((,class (:foreground ,x-acs-yellow))))
   `(nerd-icons-maroon     ((,class (:foreground ,x-acs-yellow))))
   `(nerd-icons-orange     ((,class (:foreground ,x-acs-yellow))))
   `(nerd-icons-pink       ((,class (:foreground ,x-acs-light-magenta))))
   `(nerd-icons-purple     ((,class (:foreground ,x-acs-light-magenta))))
   `(nerd-icons-purple-alt ((,class (:foreground ,x-acs-magenta))))
   `(nerd-icons-red        ((,class (:foreground ,x-acs-light-red))))
   `(nerd-icons-red-alt    ((,class (:foreground ,x-acs-red))))
   `(nerd-icons-silver     ((,class (:foreground ,x-acs-light-gray))))
   `(nerd-icons-yellow     ((,class (:foreground ,x-acs-yellow))))

   ;; Org Faces.
   `(org-agenda-current-time       ((,class)))
   `(org-agenda-date               ((,class (:foreground ,x-acs-yellow))))
   `(org-agenda-date-today         ((,class (:slant italic :inherit org-agenda-date))))
   `(org-agenda-date-weekend       ((,class (:foreground ,x-acs-light-green))))
   `(org-agenda-date-weekend-today ((,class (:slant italic :inherit org-agenda-date-weekend))))
   `(org-agenda-done               ((,class (:strike-through t))))
   `(org-agenda-structure          ((,class (:foreground ,x-acs-light-red :weight black))))
   `(org-block                     ((,class (:inherit default))))
   `(org-block-begin-line          ((,class (:foreground ,x-acs-light-magenta :inherit default))))
   `(org-block-end-line            ((,class (:inherit org-block-begin-line))))
   `(org-checkbox                  ((,class (:inherit default))))
   `(org-code                      ((,class (:foreground ,foreground-alt :inherit default))))
   `(org-date                      ((,class (:foreground ,x-acs-light-cyan :underline t))))
   `(org-date-selected             ((,class (:background ,foreground-alt :foreground ,background))))
   `(org-document-info             ((,class (:foreground ,x-acs-yellow))))
   `(org-document-info-keyword     ((,class (:inherit org-block-begin-line))))
   `(org-document-title            ((,class (:inherit org-agenda-structure))))
   `(org-done                      ((,class (:foreground ,success :weight black))))
   `(org-drawer                    ((,class (:inherit org-block-begin-line))))
   `(org-ellipsis                  ((,class)))
   `(org-footnote                  ((,class (:inherit org-date))))
   `(org-formula                   ((,class (:foreground ,foreground-alt :inherit default))))
   `(org-headline-done             ((,class)))
   `(org-headline-todo             ((,class)))
   `(org-imminent-deadline         ((,class (:foreground ,x-acs-light-magenta :weight black))))
   `(org-level-1                   ((,class (:inherit org-agenda-structure))))
   `(org-level-2                   ((,class (:inherit org-agenda-date))))
   `(org-level-3                   ((,class (:inherit org-agenda-date-weekend))))
   `(org-level-4                   ((,class (:foreground ,x-acs-light-cyan :weight black))))
   `(org-level-5                   ((,class (:foreground ,x-acs-light-blue :weight black))))
   `(org-level-6                   ((,class (:inherit org-imminent-deadline))))
   `(org-meta-line                 ((,class (:foreground ,x-acs-light-blue :inherit default))))
   `(org-quote                     ((,class (:inherit org-block-begin-line))))
   `(org-scheduled                 ((,class (:foreground ,x-acs-light-cyan))))
   `(org-scheduled-previously      ((,class (:slant italic :inherit org-level-5))))
   `(org-scheduled-today           ((,class (:slant italic :inherit org-level-4))))
   `(org-table                     ((,class (:background ,background-alt :inherit default))))
   `(org-tag                       ((,class (:inherit org-block-begin-line))))
   `(org-time-grid                 ((,class (:foreground ,foreground-alt))))
   `(org-todo                      ((,class (:foreground ,warning :weight black))))
   `(org-upcoming-deadline         ((,class (:inherit org-imminent-deadline))))
   `(org-verbatim                  ((,class (:underline t :inherit org-code))))
   `(org-verse                     ((,class (:inherit org-block-begin-line))))

   ;; Org Superstar.
   `(org-superstar-leading ((,class (:foreground ,background))))

   ;; Rainbow Delimiters Faces.
   `(rainbow-delimiters-base-error-face ((,class (:foreground ,error :weight black :strike-through t))))
   `(rainbow-delimiters-base-face       ((,class (:foreground ,foreground))))
   `(rainbow-delimiters-depth-1-face    ((,class (:foreground ,x-acs-light-red))))
   `(rainbow-delimiters-depth-2-face    ((,class (:foreground ,x-acs-yellow))))
   `(rainbow-delimiters-depth-3-face    ((,class (:foreground ,x-acs-light-green))))
   `(rainbow-delimiters-depth-4-face    ((,class (:foreground ,x-acs-light-cyan))))
   `(rainbow-delimiters-depth-5-face    ((,class (:foreground ,x-acs-light-blue))))
   `(rainbow-delimiters-depth-6-face    ((,class (:foreground ,x-acs-light-magenta))))
   `(rainbow-delimiters-mismatched-face ((,class (:foreground ,error :weight black :strike-through t))))
   `(rainbow-delimiters-unmatched-face  ((,class (:foreground ,error :weight black  :strike-through t))))

   ;; Vterm.
   `(vterm-color-black         ((,class (:background ,x-acs-dark-gray :foreground ,x-acs-black))))
   `(vterm-color-blue          ((,class (:background ,x-acs-light-blue :foreground ,x-acs-blue))))
   `(vterm-color-cyan          ((,class (:background ,x-acs-light-cyan :foreground ,x-acs-cyan))))
   `(vterm-color-green         ((,class (:background ,x-acs-light-green :foreground ,x-acs-green))))
   `(vterm-color-inverse-video ((,class (:inverse-video t))))
   `(vterm-color-magenta       ((,class (:background ,x-acs-light-magenta :foreground ,x-acs-magenta))))
   `(vterm-color-red           ((,class (:background ,x-acs-light-red :foreground ,x-acs-red))))
   `(vterm-color-underline     ((,class (:underline t))))
   `(vterm-color-white         ((,class (:background ,x-acs-white :foreground ,x-acs-light-gray))))
   `(vterm-color-yellow        ((,class (:background ,x-acs-yellow :foreground ,x-acs-dark-yellow))))

   ;;;; End of Packages Faces.

   ))

;; Providing theme.
(provide-theme 'x-acs-light)

;;; x-acs-light-theme.el ends here
