;; -----------------------------------------------------------------------------
;; Emacs package manager :)
;; -----------------------------------------------------------------------------

(add-to-list 'load-path "~/.config/emacs/el-get/el-get")
(require 'el-get)

(setq el-get-dir "~/.config/emacs/el-get"
      el-get-recipe-path '("~/.config/emacs/el-get/el-get/recipes")
      el-get-sources '(doxymacs flyguess verbiste))

(el-get)

(defun schnouki/el-get-update-all ()
  (interactive)
  (let (item name)
    (dolist (item el-get-sources)
      (setq name (symbol-name
		  (if (symbolp item) item
		    (plist-get item :name))))
      (message (concat "## Updating " name " ##"))
      (el-get-update name))))
