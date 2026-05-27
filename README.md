# Verditer Theme for Emacs

![Emacs Logo](https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/EmacsIcon.svg/120px-EmacsIcon.svg.png)

[![MELPA](https://melpa.org/packages/verditer-theme-badge.svg)](https://melpa.org/#/verditer-theme)
[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](https://www.gnu.org/licenses/gpl-3.0)
[![Maintainability](https://api.codeclimate.com/v1/badges/a99a88d28ad37a79dbf6/maintainability)](https://codeclimate.com/github/HenryNewcomer/verditer-theme)

Verditer is a vibrant blue-green theme for Emacs, inspired by the natural pigment of the same name. It offers a refreshing and calming visual experience while coding.

![Verditer Theme Screenshot](./screenshots/verditer-main.png)

## Features

- Carefully chosen color palette for optimal readability
- Support for a wide range of programming languages and modes
- Enhanced Org-mode styling
- Customizable options to tailor the theme to your preferences

## Installation

### MELPA (Recommended)

Verditer is available on MELPA. Ensure you have MELPA added to your package archives, then use:

```emacs-lisp
(use-package verditer-theme
  :config
  (load-theme 'verditer t))
```

### Manual Installation

1. Download `verditer-theme.el` to your Emacs themes directory:
   ```
   ~/.emacs.d/themes/
   ```
   or
   ```
   ~/.config/emacs/themes/
   ```

2. Add the following to your `init.el`:

```emacs-lisp
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
; or
(add-to-list 'custom-theme-load-path "~/.config/emacs/themes/")

(load-theme 'verditer t)
```

## Customization

Verditer offers several customization options:

```emacs-lisp
;; Enable vivid cursor (default: nil)
(setq verditer-vivid-cursor t)

;; Use softer background color (default: nil)
(setq verditer-softer-bg t)

;; Enhance contrast for better readability (default: nil)
(setq verditer-high-contrast t)
```

Apply these settings before loading the theme.

## Screenshots

### Python
![Python Screenshot](./screenshots/verditer-python.png)

### Org-mode
![Org-mode Screenshot](./screenshots/verditer-org.png)

### Magit
![Magit Screenshot](./screenshots/verditer-magit.png)

## Color Palette

![Verditer Color Palette](./screenshots/verditer-palette.png)

## Contributing

Contributions to improve Verditer are welcome! Please feel free to submit pull requests or create issues for bugs and feature requests.

## License

Copyright (c) 2024 Henry Newcomer

Distributed under the GNU General Public License, version 3. See [LICENSE](./LICENSE) for more information.
