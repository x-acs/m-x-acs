;;; x-acs-legacy-light-theme.el --- X-ACS legacy light theme -*- lexical-binding: t; -*-

;; Copyright (C) 2023-2026 X-ACS

;; Author: Sidney PEPO <sidneypepo@disroot.org>

;; Version: 20260110
;; Keywords: theme, light, legacy, x-acs

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

;; X-ACS legacy light theme for GNU Emacs

;;; Code:

(deftheme x-acs-legacy-light
  "X-ACS legacy light theme for GNU Emacs.")

(custom-theme-set-variables 'x-acs-legacy-light ; This makes the theme fit better in Emacs and some packages
 '(frame-background-mode 'light)
 '(org-n-level-faces 6)
 '(rainbow-delimiters-max-face-count 6))

(let* ((cls '((class color) (min-colors 89)))

       ;; X-ACS color scheme
       (x-acs-red           "#FF2222")
       (x-acs-yellow        "#FFBB11")
       (x-acs-green         "#00DD55")
       (x-acs-cyan          "#00CCEE")
       (x-acs-blue          "#1166FF")
       (x-acs-magenta       "#DD33FF")

       (x-acs-light-red     "#CC0000")
       (x-acs-light-yellow  "#CC8800")
       (x-acs-light-green   "#00AA22")
       (x-acs-light-cyan    "#0099BB")
       (x-acs-light-blue    "#0033CC")
       (x-acs-light-magenta "#AA00CC")

       ;; Neutral colors
       (x-acs-black      "#EEEEEE")
       (x-acs-gray       "#BBBBBB")
       (x-acs-light-gray "#444444")
       (x-acs-white      "#111111")

       ;; Environment colors
       (bg     x-acs-black)
       (bg-alt x-acs-gray)
       (fg     x-acs-white)
       (fg-alt x-acs-light-gray)

       ;; Status colors
       (err x-acs-red)
       (wrn x-acs-yellow)
       (scs x-acs-green))

  (custom-theme-set-faces
   'x-acs-legacy-light

   ;; Faces format:
   ;; `(face-name ((,cls (:selector1 value1 :selector value2 :selector3 value3...))))

   ;;;; GNU Emacs' faces

   ;; Default face
   `(default ((,cls (:background ,bg :foreground ,fg))))

   ;; Basic faces
   `(bold                     ((,cls (:weight black))))
   `(bold-italic              ((,cls (:slant italic :inherit bold))))
   `(cursor                   ((,cls (:background ,fg-alt :foreground ,bg))))
   `(eshell-prompt            ((,cls (:foreground ,x-acs-light-green :weight black))))
   `(escape-glyph             ((,cls (:foreground ,wrn))))
   `(error                    ((,cls (:foreground ,err))))
   `(fringe                   ((,cls (:background ,bg-alt))))
   `(help-key-binding         ((,cls (:background ,bg-alt :foreground ,fg))))
   `(highlight                ((,cls (:background ,fg-alt))))
   `(hl-line                  ((,cls (:background ,bg-alt))))
   `(homoglyph                ((,cls (:foreground ,wrn))))
   `(info-menu-star           ((,cls (:foreground ,fg))))
   `(isearch                  ((,cls (:background ,fg-alt :foreground ,bg))))
   `(lazy-highlight           ((,cls (:background ,bg-alt :foreground ,fg))))
   `(line-number              ((,cls (:foreground ,bg-alt :inherit default))))
   `(line-number-current-line ((,cls (:foreground ,fg-alt :inherit (hl-line default)))))
   `(link                     ((,cls (:foreground ,x-acs-light-cyan :underline t))))
   `(link-visited             ((,cls (:foreground ,x-acs-light-magenta :underline t))))
   `(minibuffer-prompt        ((,cls (:foreground ,x-acs-light-magenta))))
   `(mode-line                ((,cls (:background ,bg-alt :foreground ,fg))))
   `(mode-line-buffer-id      ((,cls (:foreground ,fg))))
   `(mode-line-highlight      ((,cls (:inverse-video t))))
   `(mode-line-inactive       ((,cls (:background ,bg-alt :foreground ,fg-alt))))
   `(region                   ((,cls (:background ,bg-alt))))
   `(secondary-selection      ((,cls (:background ,wrn :foreground ,bg))))
   `(shadow                   ((,cls (:foreground ,fg-alt))))
   `(success                  ((,cls (:foreground ,scs))))
   `(warning                  ((,cls (:foreground ,wrn))))
   `(widget-field             ((,cls (:background ,bg-alt :foreground ,fg))))
   `(widget-inactive          ((,cls (:background ,fg-alt :foreground ,bg-alt :weight normal))))

   ;; Font Lock
   `(font-lock-builtin-face       ((,cls (:foreground ,x-acs-light-magenta :slant italic))))
   `(font-lock-comment-face       ((,cls (:foreground ,x-acs-light-blue))))
   `(font-lock-constant-face      ((,cls (:foreground ,x-acs-light-yellow :slant italic))))
   `(font-lock-function-name-face ((,cls (:foreground ,x-acs-light-red :slant italic))))
   `(font-lock-keyword-face       ((,cls (:foreground ,x-acs-light-magenta))))
   `(font-lock-string-face        ((,cls (:inherit font-lock-constant-face))))
   `(font-lock-type-face          ((,cls (:foreground ,x-acs-light-green))))
   `(font-lock-variable-name-face ((,cls (:foreground ,x-acs-light-cyan :slant italic))))
   `(font-lock-warning-face       ((,cls (:foreground ,wrn))))

   ;; Ansi Colors
   `(ansi-color-black          ((,cls (:background ,x-acs-black :foreground ,x-acs-black))))
   `(ansi-color-red            ((,cls (:background ,x-acs-red :foreground ,x-acs-red))))
   `(ansi-color-green          ((,cls (:background ,x-acs-green :foreground ,x-acs-green))))
   `(ansi-color-yellow         ((,cls (:background ,x-acs-yellow :foreground ,x-acs-yellow))))
   `(ansi-color-blue           ((,cls (:background ,x-acs-blue :foreground ,x-acs-blue))))
   `(ansi-color-magenta        ((,cls (:background ,x-acs-magenta :foreground ,x-acs-magenta))))
   `(ansi-color-cyan           ((,cls (:background ,x-acs-cyan :foreground ,x-acs-cyan))))
   `(ansi-color-white          ((,cls (:background ,x-acs-light-gray :foreground ,x-acs-light-gray))))
   `(ansi-color-bright-black   ((,cls (:background ,x-acs-gray :foreground ,x-acs-gray))))
   `(ansi-color-bright-red     ((,cls (:background ,x-acs-light-red :foreground ,x-acs-light-red))))
   `(ansi-color-bright-green   ((,cls (:background ,x-acs-light-green :foreground ,x-acs-light-green))))
   `(ansi-color-bright-yellow  ((,cls (:background ,x-acs-light-yellow :foreground ,x-acs-light-yellow))))
   `(ansi-color-bright-blue    ((,cls (:background ,x-acs-light-blue :foreground ,x-acs-light-blue))))
   `(ansi-color-bright-magenta ((,cls (:background ,x-acs-light-magenta :foreground ,x-acs-light-magenta))))
   `(ansi-color-bright-cyan    ((,cls (:background ,x-acs-light-cyan :foreground ,x-acs-light-cyan))))
   `(ansi-color-bright-white   ((,cls (:background ,x-acs-white :foreground ,x-acs-white))))

   ;; Customize
   `(custom-button                  ((,cls (:background ,fg-alt :foreground ,bg :weight black))))
   `(custom-button-mouse            ((,cls (:background ,fg :foreground ,bg-alt :weight black))))
   `(custom-button-pressed          ((,cls (:background ,bg-alt :foreground ,fg :weight black))))
   `(custom-button-pressed-unraised ((,cls (:foreground ,x-acs-light-magenta :underline t))))
   `(custom-button-unraised         ((,cls (:background ,x-acs-light-gray :foreground ,bg :weight black))))
   `(custom-group-tag               ((,cls (:foreground ,x-acs-light-cyan :weight black :inherit variable-pitch))))
   `(custom-group-tag-1             ((,cls (:foreground ,x-acs-light-magenta :inherit custom-group-tag))))
   `(custom-state                   ((,cls (:foreground ,x-acs-light-green))))
   `(custom-variable-tag            ((,cls (:foreground ,x-acs-light-cyan :weight black))))
   `(custom-visibility              ((,cls (:foreground ,x-acs-light-cyan :underline t))))

   ;; Font LaTeX Highlighting
   `(font-latex-bold-face         ((,cls (:weight black))))
   `(font-latex-italic-face       ((,cls (:slant italic))))
   `(font-latex-math-face         ((,cls (:foreground ,fg-alt :inherit default))))
   `(font-latex-script-char-face  ((,cls (:foreground ,x-acs-light-magenta :weight black))))
   `(font-latex-sectioning-0-face ((,cls (:foreground ,x-acs-light-red :weight black))))
   `(font-latex-sectioning-1-face ((,cls (:foreground ,x-acs-light-yellow :weight black))))
   `(font-latex-sectioning-2-face ((,cls (:foreground ,x-acs-light-green :weight black))))
   `(font-latex-sectioning-3-face ((,cls (:foreground ,x-acs-light-blue :weight black))))
   `(font-latex-sectioning-4-face ((,cls (:foreground ,x-acs-light-cyan :weight black))))
   `(font-latex-sectioning-5-face ((,cls (:foreground ,x-acs-light-magenta :weight black))))
   `(font-latex-sedate-face       ((,cls (:foreground ,fg-alt))))
   `(font-latex-slide-title-face  ((,cls (:foreground ,x-acs-light-red :weight black))))
   `(font-latex-string-face       ((,cls (:foreground ,x-acs-light-yellow :slant italic))))
   `(font-latex-subscript-face    ((,cls)))
   `(font-latex-superscript-face  ((,cls)))
   `(font-latex-underline-face    ((,cls (:underline t))))
   `(font-latex-verbatim-face     ((,cls (:inherit font-latex-math-face))))
   `(font-latex-warning-face      ((,cls (:foreground ,wrn))))

   ;; Gnus
   `(gnus-group-news-1           ((,cls (:foreground ,x-acs-light-red :weight black))))
   `(gnus-group-news-1-low       ((,cls (:foreground ,x-acs-light-red))))
   `(gnus-group-news-2           ((,cls (:foreground ,x-acs-light-yellow :weight black))))
   `(gnus-group-news-2-low       ((,cls (:foreground ,x-acs-light-yellow))))
   `(gnus-group-news-3           ((,cls (:foreground ,x-acs-light-green :weight black))))
   `(gnus-group-news-3-low       ((,cls (:foreground ,x-acs-light-green))))
   `(gnus-group-news-4           ((,cls (:foreground ,x-acs-light-blue :weight black))))
   `(gnus-group-news-4-low       ((,cls (:foreground ,x-acs-light-blue))))
   `(gnus-group-news-5           ((,cls (:foreground ,x-acs-light-magenta :weight black))))
   `(gnus-group-news-5-low       ((,cls (:foreground ,x-acs-light-magenta))))
   `(gnus-group-news-low         ((,cls (:foreground ,fg-alt))))
   `(gnus-group-mail-1           ((,cls (:foreground ,x-acs-light-red :weight black))))
   `(gnus-group-mail-1-low       ((,cls (:foreground ,x-acs-light-red))))
   `(gnus-group-mail-1-empty     ((,cls (:foreground ,fg-alt))))
   `(gnus-group-mail-2           ((,cls (:foreground ,x-acs-light-green :weight black))))
   `(gnus-group-mail-2-low       ((,cls (:foreground ,x-acs-light-green))))
   `(gnus-group-mail-2-empty     ((,cls (:foreground ,fg-alt))))
   `(gnus-group-mail-3           ((,cls (:foreground ,x-acs-light-blue :weight black))))
   `(gnus-group-mail-3-low       ((,cls (:foreground ,x-acs-light-blue))))
   `(gnus-group-mail-3-empty     ((,cls (:foreground ,fg-alt))))
   `(gnus-group-mail-low         ((,cls (:foreground ,fg-alt))))
   `(gnus-header-content         ((,cls (:foreground ,x-acs-light-yellow :slant italic))))
   `(gnus-header-from            ((,cls (:foreground ,x-acs-light-cyan :slant italic))))
   `(gnus-header-name            ((,cls (:foreground ,x-acs-light-green :weight black))))
   `(gnus-header-newsgroups      ((,cls (:foreground ,x-acs-light-cyan))))
   `(gnus-header-subject         ((,cls (:foreground ,x-acs-light-cyan :weight black))))
   `(gnus-server-opened          ((,cls (:foreground ,x-acs-light-green :weight black))))
   `(gnus-server-closed          ((,cls (:foreground ,x-acs-light-blue :slant italic))))
   `(gnus-summary-cancelled      ((,cls (:foreground ,x-acs-light-red :extend t))))
   `(gnus-summary-normal-ancient ((,cls (:foreground ,x-acs-light-blue :extend t))))
   `(gnus-summary-normal-read    ((,cls (:foreground ,x-acs-light-cyan :extend t))))
   `(gnus-summary-selected       ((,cls (:foreground ,x-acs-light-cyan :underline t :extend t))))

   ;; Message
   `(message-cited-text          ((,cls (:foreground ,fg-alt))))
   `(message-cited-text-1        ((,cls (:inherit message-cited-text))))
   `(message-cited-text-2        ((,cls (:foreground ,x-acs-yellow))))
   `(message-cited-text-3        ((,cls (:foreground ,x-acs-cyan))))
   `(message-cited-text-4        ((,cls (:foreground ,x-acs-green))))
   `(message-header-cc           ((,cls (:inherit message-header-to))))
   `(message-header-name         ((,cls (:foreground ,x-acs-light-green :weight black))))
   `(message-header-newsgroups   ((,cls (:inherit message-header-to))))
   `(message-header-other        ((,cls (:foreground ,x-acs-light-yellow :slant italic))))
   `(message-header-subject      ((,cls (:foreground ,x-acs-light-cyan :weight black))))
   `(message-header-to           ((,cls (:foreground ,x-acs-light-cyan :slant italic))))
   `(message-mml                 ((,cls (:foreground ,x-acs-light-red))))
   `(message-separator           ((,cls (:foreground ,x-acs-light-magenta :weight black))))
   `(message-signature-separator ((,cls (:inherit message-separator))))

   ;; Paren Showing
   `(show-paren-match            ((,cls (:inverse-video t))))
   `(show-paren-match-expression ((,cls (:inverse-video t))))
   `(show-paren-mismatch         ((,cls (:inverse-video t))))

   ;; Popup
   `(popup-face                       ((,cls (:background ,fg-alt :foreground ,bg))))
   `(popup-isearch-match              ((,cls (:background ,bg-alt :foreground ,fg))))
   `(popup-menu-mouse-face            ((,cls (:background ,x-acs-light-blue :foreground ,bg :weight black))))
   `(popup-menu-selection-face        ((,cls (:background ,x-acs-light-cyan :foreground ,bg :weight black))))
   `(popup-scroll-bar-background-face ((,cls (:background ,bg-alt))))
   `(popup-scroll-bar-foreground-face ((,cls (:background ,bg))))
   `(popup-summary-face               ((,cls (:background ,fg-alt :foreground ,bg-alt))))
   `(popup-tip-face                   ((,cls (:background ,x-acs-light-yellow :foreground ,bg))))

   ;; Sh Indentation
   `(sh-heredoc     ((,cls (:foreground ,x-acs-light-yellow))))
   `(sh-quoted-exec ((,cls (:foreground ,fg-alt))))

   ;; Tab Bar
   `(tab-bar                  ((,cls (:background ,bg-alt))))
   `(tab-bar-tab              ((,cls (:background ,bg :foreground ,fg :weight black))))
   `(tab-bar-tab-inactive     ((,cls (:background ,bg-alt :foreground ,fg-alt))))

   ;; Tab Line
   `(tab-line                  ((,cls (:background ,bg-alt))))
   `(tab-line-highlight        ((,cls (:background ,fg :foreground ,bg-alt))))
   `(tab-line-tab              ((,cls (:background ,bg :foreground ,fg :weight black))))
   `(tab-line-tab-current      ((,cls (:background ,bg :foreground ,fg :weight black))))
   `(tab-line-tab-modified     ((,cls (:foreground ,wrn))))
   `(tab-line-tab-inactive     ((,cls (:background ,bg-alt :foreground ,fg-alt))))
   `(tab-line-tab-special      ((,cls (:inherit tab-line-tab-inactive))))

   ;; Window Divider
   `(window-divider             ((,cls (:foreground ,bg))))
   `(window-divider-first-pixel ((,cls (:inherit window-divider))))
   `(window-divider-last-pixel  ((,cls (:inherit window-divider))))

   ;; Whitespace
   `(whitespace-big-indent             ((,cls (:background ,err :foreground ,err))))
   `(whitespace-empty                  ((,cls (:background ,wrn :foreground ,err))))
   `(whitespace-hspace                 ((,cls (:background ,bg-alt :foreground ,fg-alt))))
   `(whitespace-indentation            ((,cls (:inherit whitespace-empty))))
   `(whitespace-line                   ((,cls (:background ,bg-alt :foreground ,wrn))))
   `(whitespace-missing-newline-at-eof ((,cls (:background ,wrn :foreground ,bg-alt))))
   `(whitespace-newline                ((,cls (:foreground ,bg-alt))))
   `(whitespace-space                  ((,cls (:inherit whitespace-hspace))))
   `(whitespace-space-after-tab        ((,cls (:inherit whitespace-empty))))
   `(whitespace-space-before-tab       ((,cls (:background ,err :foreground ,wrn))))
   `(whitespace-tab                    ((,cls (:inherit whitespace-hspace))))
   `(whitespace-trailing               ((,cls (:inherit whitespace-space-before-tab))))

   ;;;; End of GNU Emacs' faces

   ;;;; Packages' faces

   ;; All The Icons
   `(all-the-icons-blue       ((,cls (:foreground ,x-acs-light-blue))))
   `(all-the-icons-blue-alt   ((,cls (:foreground ,x-acs-blue))))
   `(all-the-icons-cyan       ((,cls (:foreground ,x-acs-light-cyan))))
   `(all-the-icons-cyan-alt   ((,cls (:foreground ,x-acs-cyan))))
   `(all-the-icons-dblue      ((,cls (:foreground ,x-acs-blue))))
   `(all-the-icons-dcyan      ((,cls (:foreground ,x-acs-cyan))))
   `(all-the-icons-dgreen     ((,cls (:foreground ,x-acs-green))))
   `(all-the-icons-dmaroon    ((,cls (:foreground ,x-acs-yellow))))
   `(all-the-icons-dorange    ((,cls (:foreground ,x-acs-yellow))))
   `(all-the-icons-dpink      ((,cls (:foreground ,x-acs-magenta))))
   `(all-the-icons-dpurple    ((,cls (:foreground ,x-acs-magenta))))
   `(all-the-icons-dred       ((,cls (:foreground ,x-acs-red))))
   `(all-the-icons-dsilver    ((,cls (:foreground ,x-acs-gray))))
   `(all-the-icons-dyellow    ((,cls (:foreground ,x-acs-yellow))))
   `(all-the-icons-green      ((,cls (:foreground ,x-acs-light-green))))
   `(all-the-icons-lblue      ((,cls (:foreground ,x-acs-light-blue))))
   `(all-the-icons-lcyan      ((,cls (:foreground ,x-acs-light-cyan))))
   `(all-the-icons-lgreen     ((,cls (:foreground ,x-acs-light-green))))
   `(all-the-icons-lmaroon    ((,cls (:foreground ,x-acs-light-yellow))))
   `(all-the-icons-lorange    ((,cls (:foreground ,x-acs-light-yellow))))
   `(all-the-icons-lpink      ((,cls (:foreground ,x-acs-light-magenta))))
   `(all-the-icons-lpurple    ((,cls (:foreground ,x-acs-light-magenta))))
   `(all-the-icons-lred       ((,cls (:foreground ,x-acs-light-red))))
   `(all-the-icons-lsilver    ((,cls (:foreground ,x-acs-light-gray))))
   `(all-the-icons-lyellow    ((,cls (:foreground ,x-acs-light-yellow))))
   `(all-the-icons-maroon     ((,cls (:foreground ,x-acs-light-yellow))))
   `(all-the-icons-orange     ((,cls (:foreground ,x-acs-light-yellow))))
   `(all-the-icons-pink       ((,cls (:foreground ,x-acs-light-magenta))))
   `(all-the-icons-purple     ((,cls (:foreground ,x-acs-light-magenta))))
   `(all-the-icons-purple-alt ((,cls (:foreground ,x-acs-magenta))))
   `(all-the-icons-red        ((,cls (:foreground ,x-acs-light-red))))
   `(all-the-icons-red-alt    ((,cls (:foreground ,x-acs-red))))
   `(all-the-icons-silver     ((,cls (:foreground ,x-acs-light-gray))))
   `(all-the-icons-yellow     ((,cls (:foreground ,x-acs-light-yellow))))

   ;; Doom Modeline
   `(doom-modeline-battery-charging   ((,cls (:foreground ,x-acs-light-green))))
   `(doom-modeline-battery-full       ((,cls (:foreground ,x-acs-light-green))))
   `(doom-modeline-highlight          ((,cls (:inverse-video t))))
   `(doom-modeline-buffer-major-mode  ((,cls (:foreground ,x-acs-light-magenta :weight black))))
   `(doom-modeline-buffer-minor-mode  ((,cls (:foreground ,x-acs-light-cyan))))
   `(doom-modeline-buffer-modified    ((,cls (:foreground ,x-acs-light-yellow))))
   `(doom-modeline-overwrite          ((,cls (:foreground ,x-acs-light-red))))
   `(doom-modeline-project-dir        ((,cls (:foreground ,x-acs-light-cyan :slant italic))))
   `(doom-modeline-project-parent-dir ((,cls (:foreground ,x-acs-light-blue))))
   `(doom-modeline-project-root-dir   ((,cls (:foreground ,fg :weight black))))
   `(doom-modeline-warning            ((,cls (:foreground ,wrn))))

   ;; Ivy
   `(ivy-confirm-face            ((,cls (:inherit ivy-grep-info))))
   `(ivy-current-match           ((,cls (:background ,fg-alt :foreground ,bg))))
   `(ivy-cursor                  ((,cls (:background ,fg-alt))))
   `(ivy-match-required-face     ((,cls (:foreground ,err))))
   `(ivy-minibuffer-match-face-1 ((,cls (:background ,bg-alt :foreground ,fg))))
   `(ivy-minibuffer-match-face-2 ((,cls (:inherit ivy-minibuffer-match-face-1))))
   `(ivy-minibuffer-match-face-3 ((,cls (:inherit ivy-minibuffer-match-face-1))))
   `(ivy-minibuffer-match-face-4 ((,cls (:inherit ivy-minibuffer-match-face-1))))

   ;; Neotree
   `(neo-dir-link-face ((,cls (:foreground ,x-acs-light-red :slant italic))))
   `(neo-root-dir-face ((,cls (:foreground ,x-acs-light-green))))

   ;; Nerd Icons
   `(nerd-icons-blue       ((,cls (:foreground ,x-acs-light-blue))))
   `(nerd-icons-blue-alt   ((,cls (:foreground ,x-acs-blue))))
   `(nerd-icons-cyan       ((,cls (:foreground ,x-acs-light-cyan))))
   `(nerd-icons-cyan-alt   ((,cls (:foreground ,x-acs-cyan))))
   `(nerd-icons-dblue      ((,cls (:foreground ,x-acs-blue))))
   `(nerd-icons-dcyan      ((,cls (:foreground ,x-acs-cyan))))
   `(nerd-icons-dgreen     ((,cls (:foreground ,x-acs-green))))
   `(nerd-icons-dmaroon    ((,cls (:foreground ,x-acs-yellow))))
   `(nerd-icons-dorange    ((,cls (:foreground ,x-acs-yellow))))
   `(nerd-icons-dpink      ((,cls (:foreground ,x-acs-magenta))))
   `(nerd-icons-dpurple    ((,cls (:foreground ,x-acs-magenta))))
   `(nerd-icons-dred       ((,cls (:foreground ,x-acs-red))))
   `(nerd-icons-dsilver    ((,cls (:foreground ,x-acs-gray))))
   `(nerd-icons-dyellow    ((,cls (:foreground ,x-acs-yellow))))
   `(nerd-icons-green      ((,cls (:foreground ,x-acs-light-green))))
   `(nerd-icons-lblue      ((,cls (:foreground ,x-acs-light-blue))))
   `(nerd-icons-lcyan      ((,cls (:foreground ,x-acs-light-cyan))))
   `(nerd-icons-lgreen     ((,cls (:foreground ,x-acs-light-green))))
   `(nerd-icons-lmaroon    ((,cls (:foreground ,x-acs-light-yellow))))
   `(nerd-icons-lorange    ((,cls (:foreground ,x-acs-light-yellow))))
   `(nerd-icons-lpink      ((,cls (:foreground ,x-acs-light-magenta))))
   `(nerd-icons-lpurple    ((,cls (:foreground ,x-acs-light-magenta))))
   `(nerd-icons-lred       ((,cls (:foreground ,x-acs-light-red))))
   `(nerd-icons-lsilver    ((,cls (:foreground ,x-acs-light-gray))))
   `(nerd-icons-lyellow    ((,cls (:foreground ,x-acs-light-yellow))))
   `(nerd-icons-maroon     ((,cls (:foreground ,x-acs-light-yellow))))
   `(nerd-icons-orange     ((,cls (:foreground ,x-acs-light-yellow))))
   `(nerd-icons-pink       ((,cls (:foreground ,x-acs-light-magenta))))
   `(nerd-icons-purple     ((,cls (:foreground ,x-acs-light-magenta))))
   `(nerd-icons-purple-alt ((,cls (:foreground ,x-acs-magenta))))
   `(nerd-icons-red        ((,cls (:foreground ,x-acs-light-red))))
   `(nerd-icons-red-alt    ((,cls (:foreground ,x-acs-red))))
   `(nerd-icons-silver     ((,cls (:foreground ,x-acs-light-gray))))
   `(nerd-icons-yellow     ((,cls (:foreground ,x-acs-light-yellow))))

   ;; Org
   `(org-agenda-current-time       ((,cls)))
   `(org-agenda-date               ((,cls (:foreground ,x-acs-light-yellow))))
   `(org-agenda-date-today         ((,cls (:slant italic :inherit org-agenda-date))))
   `(org-agenda-date-weekend       ((,cls (:foreground ,x-acs-light-green))))
   `(org-agenda-date-weekend-today ((,cls (:slant italic :inherit org-agenda-date-weekend))))
   `(org-agenda-done               ((,cls (:strike-through t))))
   `(org-agenda-structure          ((,cls (:foreground ,x-acs-light-red :weight black))))
   `(org-block                     ((,cls (:inherit default))))
   `(org-block-begin-line          ((,cls (:foreground ,x-acs-light-magenta :inherit default))))
   `(org-block-end-line            ((,cls (:inherit org-block-begin-line))))
   `(org-checkbox                  ((,cls (:inherit default))))
   `(org-code                      ((,cls (:foreground ,fg-alt :inherit default))))
   `(org-date                      ((,cls (:foreground ,x-acs-light-cyan :underline t))))
   `(org-date-selected             ((,cls (:background ,fg-alt :foreground ,bg))))
   `(org-document-info             ((,cls (:foreground ,x-acs-light-yellow))))
   `(org-document-info-keyword     ((,cls (:inherit org-block-begin-line))))
   `(org-document-title            ((,cls (:inherit org-agenda-structure))))
   `(org-done                      ((,cls (:foreground ,scs :weight black))))
   `(org-drawer                    ((,cls (:inherit org-block-begin-line))))
   `(org-ellipsis                  ((,cls)))
   `(org-footnote                  ((,cls (:inherit org-date))))
   `(org-formula                   ((,cls (:foreground ,fg-alt :inherit default))))
   `(org-headline-done             ((,cls)))
   `(org-headline-todo             ((,cls)))
   `(org-hide                      ((,cls (:foreground ,bg))))
   `(org-imminent-deadline         ((,cls (:foreground ,x-acs-light-magenta :weight black))))
   `(org-level-1                   ((,cls (:inherit org-agenda-structure))))
   `(org-level-2                   ((,cls (:inherit org-agenda-date))))
   `(org-level-3                   ((,cls (:inherit org-agenda-date-weekend))))
   `(org-level-4                   ((,cls (:foreground ,x-acs-light-cyan :weight black))))
   `(org-level-5                   ((,cls (:foreground ,x-acs-light-blue :weight black))))
   `(org-level-6                   ((,cls (:inherit org-imminent-deadline))))
   `(org-meta-line                 ((,cls (:foreground ,x-acs-light-blue :inherit default))))
   `(org-quote                     ((,cls (:inherit org-block-begin-line))))
   `(org-scheduled                 ((,cls (:foreground ,x-acs-light-cyan))))
   `(org-scheduled-previously      ((,cls (:slant italic :inherit org-level-5))))
   `(org-scheduled-today           ((,cls (:slant italic :inherit org-level-4))))
   `(org-table                     ((,cls (:background ,bg-alt :inherit default))))
   `(org-tag                       ((,cls (:inherit org-block-begin-line))))
   `(org-time-grid                 ((,cls (:foreground ,fg-alt))))
   `(org-todo                      ((,cls (:foreground ,wrn :weight black))))
   `(org-upcoming-deadline         ((,cls (:inherit org-imminent-deadline))))
   `(org-verbatim                  ((,cls (:underline t :inherit org-code))))
   `(org-verse                     ((,cls (:inherit org-block-begin-line))))

   ;; Org Superstar
   `(org-superstar-leading ((,cls (:foreground ,bg))))

   ;; Rainbow Delimiters
   `(rainbow-delimiters-base-error-face ((,cls (:foreground ,err :weight black :strike-through t))))
   `(rainbow-delimiters-base-face       ((,cls (:foreground ,fg))))
   `(rainbow-delimiters-depth-1-face    ((,cls (:foreground ,x-acs-light-red))))
   `(rainbow-delimiters-depth-2-face    ((,cls (:foreground ,x-acs-light-yellow))))
   `(rainbow-delimiters-depth-3-face    ((,cls (:foreground ,x-acs-light-green))))
   `(rainbow-delimiters-depth-4-face    ((,cls (:foreground ,x-acs-light-cyan))))
   `(rainbow-delimiters-depth-5-face    ((,cls (:foreground ,x-acs-light-blue))))
   `(rainbow-delimiters-depth-6-face    ((,cls (:foreground ,x-acs-light-magenta))))
   `(rainbow-delimiters-mismatched-face ((,cls (:foreground ,err :weight black :strike-through t))))
   `(rainbow-delimiters-unmatched-face  ((,cls (:foreground ,err :weight black  :strike-through t))))

   ;; Vterm
   `(vterm-color-black         ((,cls (:background ,x-acs-gray :foreground ,x-acs-black))))
   `(vterm-color-blue          ((,cls (:background ,x-acs-light-blue :foreground ,x-acs-blue))))
   `(vterm-color-cyan          ((,cls (:background ,x-acs-light-cyan :foreground ,x-acs-cyan))))
   `(vterm-color-green         ((,cls (:background ,x-acs-light-green :foreground ,x-acs-green))))
   `(vterm-color-inverse-video ((,cls (:inverse-video t))))
   `(vterm-color-magenta       ((,cls (:background ,x-acs-light-magenta :foreground ,x-acs-magenta))))
   `(vterm-color-red           ((,cls (:background ,x-acs-light-red :foreground ,x-acs-red))))
   `(vterm-color-underline     ((,cls (:underline t))))
   `(vterm-color-white         ((,cls (:background ,x-acs-white :foreground ,x-acs-light-gray))))
   `(vterm-color-yellow        ((,cls (:background ,x-acs-light-yellow :foreground ,x-acs-yellow))))

   ;;;; End of Packages' faces

   ))

(provide-theme 'x-acs-legacy-light)

;;; x-acs-legacy-light-theme.el ends here
