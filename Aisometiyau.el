(require 's)

(defun Aisometiyau-command nil
    (interactive)
    (let*
        (
            (root
                (locate-dominating-file
                    (save-window-excursion
                        (magit-dired-jump)
                        dired-directory)
                    ".git"))
            (lock-file
                (s-concat root ".git/index.lock"))
            (command
                (s-concat "rm " lock-file)))
        (shell-command command)))

(provide 'Aisometiyau)
