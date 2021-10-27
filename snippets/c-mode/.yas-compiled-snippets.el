;;; Compiled snippets and support files for `c-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'c-mode
                     '(("<" "      /*!< $0 */" "Inline member documentation" t nil nil "/home/philip/.doom.d/snippets/c-mode/inline-member.yasnippet" nil nil)
                       ("dox"
                        (progn
                          (unless
                              (and
                               (fboundp 'semantic-current-tag)
                               semantic-mode)
                            (error "Semantic required to use dox snippet"))
                          (let
                              ((tag
                                (senator-next-tag)))
                            (while
                                (or
                                 (null tag)
                                 (not
                                  (semantic-tag-of-class-p tag 'function)))
                              (setq tag
                                    (senator-next-tag)))
                            (let*
                                ((name
                                  (semantic-tag-name tag))
                                 (attrs
                                  (semantic-tag-attributes tag))
                                 (args
                                  (plist-get attrs :arguments))
                                 (return-name
                                  (plist-get attrs :type))
                                 (idx 1))
                              (if
                                  (listp return-name)
                                  (setq return-name
                                        (car return-name)))
                              (yas/expand-snippet
                               (format "/**\n* @brief ${1:%s}\n*\n%s\n%s*/\n" name
                                       (mapconcat
                                        (lambda
                                          (x)
                                          (format "* @param %s ${%d:Description of %s}"
                                                  (car x)
                                                  (incf idx)
                                                  (car x)))
                                        args "\n")
                                       (if
                                           (and return-name
                                                (not
                                                 (string-equal "void" return-name)))
                                           (format " * @return ${%d:%s}\n"
                                                   (incf idx)
                                                   return-name)
                                         ""))))))
                        "dox" nil nil nil "/home/philip/.doom.d/snippets/c-mode/dox.yasnippet" nil nil)))


;;; Do not edit! File generated at Tue Oct 12 15:20:55 2021
