;;; Compiled snippets and support files for `beancount-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'beancount-mode
                     '(("trans" "`(format-time-string \"%Y-%m-%d\")` * \"${1:Description}\"\n${2:Account$$(beancount-insert-account \"\")} ${3:AMT}\n${4:CUR$(yas-choose-value '(\"USD\" \"DKK\"))}\n${5:Account$$(yas-choose-value beancount-accounts)} -$3 $4\n\nbc_$0" "insert transaction" nil nil
                        ((yas-indent-line 'fixed)
                         (yas-wrap-around-region 'nil))
                        "/home/philip/.doom.d/snippets/beancount-mode/insert_transaction.yasnippet" "direct-keybinding" nil)))


;;; Do not edit! File generated at Tue Oct 12 15:20:55 2021
