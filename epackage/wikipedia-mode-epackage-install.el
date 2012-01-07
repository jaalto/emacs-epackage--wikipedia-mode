(require 'wikipedia-mode-epackage-0loaddefs)

(defun wikipedia-mode-epackage-maybe-turn-on ()
  "Turn on 'wikipedia-mode' if editing Wikipedia article.
If you use emacsserver and Firefox extension \"It's all text\" to
delegate page edits to Emacs, the fiels have certain names. If name
matches *wikipedia.org* turn mode on."
  (when (and (stringp buffer-file-name)
	     (string-match "wikipedia\\.org" buffer-file-name)
	     (fboundp 'wikipedia-mode))
    (wikipedia-mode 1)))

(add-hook 'find-file-hook 'wikipedia-mode-epackage-maybe-turn-on)

(provide 'wikipedia-mode-epackage-install)
