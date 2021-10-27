;;; Compiled snippets and support files for `python-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'python-mode
                     '(("propy" "def ${1:foo}():\n    doc = \"\"\"${2:Doc string}\"\"\"\n    def fget(self):\n        return self._$1\n\n    def fset(self, value):\n        self._$1 = value\n        return\n\n    def fdel(self):\n        del self._$1\n        return\n    return locals()\n$1 = property(**$1())\n$0\n" "property" nil nil nil "/home/philip/.doom.d/snippets/python-mode/property.snippet" nil nil)
                       ("parameters"
                        (progn
                          (flet
                              ((parse-args
                                (count tmp-buf)
                                (while
                                    (and
                                     (< count 5)
                                     (= 1
                                        (call-process-shell-command
                                         (format
                                          (concat "python << ___EOF___\n" "%s\n" " pass\n" "print(%s.__code__.co_varnames)\n" "___EOF___")
                                          (replace-regexp-in-string "^ *def" "def"
                                                                    (buffer-substring-no-properties
                                                                     (line-beginning-position)
                                                                     (line-end-position
                                                                      (incf count))))
                                          (replace-regexp-in-string "^ *def *\\(.*?\\)(.*$" "\\1"
                                                                    (buffer-substring-no-properties
                                                                     (line-beginning-position)
                                                                     (line-end-position))))
                                         nil
                                         (list tmp-buf nil))))))
                               (form-template
                                (arg-list template)
                                (let
                                    ((count 0))
                                  (dolist
                                      (narg arg-list template)
                                    (setq template
                                          (format
                                           (concat "%s${%d:%s: ${%d:type}\n"
                                                   (make-string python-indent 32)
                                                   "${%d:description}\n}")
                                           template
                                           (incf count)
                                           narg
                                           (incf count)
                                           (incf count)))))
                                (replace-regexp-in-string "}\\n}$" "}}" template))
                               (get-word-from-nline
                                (n)
                                (replace-regexp-in-string "[ 	-]*" ""
                                                          (buffer-substring-no-properties
                                                           (line-beginning-position n)
                                                           (line-end-position n)))))
                            (if
                                (and
                                 (equal ""
                                        (get-word-from-nline 0))
                                 (equal "parameters"
                                        (downcase
                                         (get-word-from-nline -1))))
                                (delete-region
                                 (line-beginning-position -1)
                                 (line-beginning-position 1)))
                            (let
                                ((indent
                                  (python-indent-calculate-indentation))
                                 (match)
                                 (template "Parameters\n----------\n")
                                 (tmp-buf "*tmp sni-param*"))
                              (save-excursion
                                (while
                                    (and
                                     (re-search-backward "^[ 	]*\\(def\\|class\\)" nil t)
                                     (setq match
                                           (match-string-no-properties 1))
                                     (re-search-forward "[ 	]*[dc]" nil t)
                                     (not
                                      (=
                                       (-
                                        (point)
                                        (line-beginning-position)
                                        1)
                                       (- indent python-indent)))))
                                (cond
                                 ((equal match "def")
                                  (parse-args 0 tmp-buf)
                                  (setq template
                                        (form-template
                                         (split-string
                                          (with-current-buffer tmp-buf
                                            (buffer-string))
                                          "[()', \n]+" t)
                                         template))
                                  (kill-buffer tmp-buf))
                                 ((equal match "class")
                                  (while
                                      (and
                                       (re-search-forward "^[ 	]+def +__init__" nil t)
                                       (not
                                        (=
                                         (python-indent-calculate-levels)
                                         indent))))
                                  (parse-args 0 tmp-buf)
                                  (setq template
                                        (form-template
                                         (cdr
                                          (split-string
                                           (with-current-buffer tmp-buf
                                             (buffer-string))
                                           "[()', \n]+" t))
                                         template))
                                  (kill-buffer tmp-buf))))
                              (yas-expand-snippet template nil nil
                                                  '((yas-indent-line 'fixed))))))
                        "parameters" nil nil nil "/home/philip/.doom.d/snippets/python-mode/parameters" nil nil)
                       ("ih" "import matplotlib as mpl\nfrom matplotlib import pyplot as plt\nimport numpy as np\nimport pandas as pd\nimport scipy as sp\n" "import header (mpl,plt,np,sp,pd)" nil nil nil "/home/philip/.doom.d/snippets/python-mode/import_header.snippet" nil nil)
                       ("defwithdoc" "def ${1:function}(${2:args}):\n    \"\"\"${3:short description}\n\n    $0\n\n    ${4:Parameters\n    ----------\n    ${5:Please press the tab key twice.$(replace-regexp-in-string\n                                           \".*\" \"parameters\" yas-text)}\n    }\"\"\"" "defwithdoc" nil nil nil "/home/philip/.doom.d/snippets/python-mode/defwithdoc" nil nil)
                       ("defm" "def ${1:name}(self, $2):\n    \"\"\"$3\n    ${2:$\n    (let* ((indent\n            (concat \"\\n\" (make-string (current-column) 32)))\n           (args\n            (mapconcat\n             '(lambda (x)\n                (if (not (string= (nth 0 x) \"\"))\n                    (concat \"- \" (char-to-string 96) (nth 0 x)\n                            (char-to-string 96) \":\")))\n             (mapcar\n              '(lambda (x)\n                 (mapcar\n                  '(lambda (x)\n                     (replace-regexp-in-string \"[[:blank:]]*$\" \"\"\n                      (replace-regexp-in-string \"^[[:blank:]]*\" \"\" x)))\n                  x))\n              (mapcar '(lambda (x) (split-string x \"=\"))\n                      (split-string yas-text \",\")))\n             indent)))\n      (if (string= args \"\")\n          (make-string 3 34)\n        (mapconcat\n         'identity\n         (list \"\" \"Arguments:\" args (make-string 3 34))\n         indent)))\n    }\n    $0" "defm" nil nil nil "/home/philip/.doom.d/snippets/python-mode/defm" nil nil)
                       ("class" "class ${1:ClassName}(${2:object}):\n    \"\"\"$3\n    \"\"\"\n\n    def __init__(self, $4):\n        \"\"\"$5\n        ${4:$\n        (let* ((indent\n                (concat \"\\n\" (make-string (current-column) 32)))\n               (args\n                (mapconcat\n                 '(lambda (x)\n                    (if (not (string= (nth 0 x) \"\"))\n                        (concat \"- \" (char-to-string 96) (nth 0 x)\n                                (char-to-string 96) \":\")))\n                 (mapcar\n                  '(lambda (x)\n                     (mapcar\n                      (lambda (x)\n                        (replace-regexp-in-string \"[[:blank:]]*$\" \"\"\n                         (replace-regexp-in-string \"^[[:blank:]]*\" \"\" x))) x))\n                  (mapcar '(lambda (x) (split-string x \"=\"))\n                          (split-string yas-text \",\")))\n                 indent)))\n          (if (string= args \"\")\n              (make-string 3 34)\n            (mapconcat\n             'identity\n             (list \"\" \"Arguments:\" args (make-string 3 34))\n             indent)))\n        }\n        ${4:$\n        (mapconcat\n         '(lambda (x)\n            (if (not (string= (nth 0 x) \"\"))\n                (concat \"self._\" (nth 0 x) \" = \" (nth 0 x))))\n         (mapcar\n          '(lambda (x)\n             (mapcar\n              '(lambda (x)\n                 (replace-regexp-in-string \"[[:blank:]]*$\" \"\"\n                  (replace-regexp-in-string \"^[[:blank:]]*\" \"\" x)))\n              x))\n          (mapcar '(lambda (x) (split-string x \"=\"))\n                  (split-string yas-text \",\")))\n         (concat \"\\n\" (make-string (current-column) 32)))\n        }\n        $0\n" "class" nil nil nil "/home/philip/.doom.d/snippets/python-mode/class" nil nil)
                       ("README.md" "yasnippet-numpy-style\n=====================\n\nyasnippet snippets for docstring in [numpy coding style](https://github.com/numpy/numpy/blob/master/doc/HOWTO_DOCUMENT.rst.txt).\n\n#Installation\nAt first, install [yasnippet](https://github.com/capitaomorte/yasnippet).\n\nThen:\n```shell\n$ git clone https://github.com/marubu/yasnippet-numpy-style.git /tmp/python-mode\n$ cp /tmp/python-mode/* ~/.emacs.d/snippets/python-mode/\n```\n\n#Demo\n##Parse arguments\nDemonstration of snippet `parameters` is shown below.\n* This snippet parses dummy argument part. (supports `class` and `def`)\n\n![alt text](images/snippet_parse.gif)\n\n##Successive expansion\nIt is possible to combine the above snippet with snippet `defwithdoc` which is for function with docstring.  \nTo use this, you need to write following emacs lisp in `~/.emacs.d/init.el`.\n```\n(setq yas-triggers-in-field t)\n```\nDemonstration of successive expansion is shown below.\n* Expand snippet by only tab key.\n\n![alt text](images/snippet_successive.gif)\n" "README.md" nil nil nil "/home/philip/.doom.d/snippets/python-mode/README.md" nil nil)
                       ("LICENSE" "The MIT License (MIT)\n\nCopyright (c) 2014 marubu\n\nPermission is hereby granted, free of charge, to any person obtaining a copy\nof this software and associated documentation files (the \"Software\"), to deal\nin the Software without restriction, including without limitation the rights\nto use, copy, modify, merge, publish, distribute, sublicense, and/or sell\ncopies of the Software, and to permit persons to whom the Software is\nfurnished to do so, subject to the following conditions:\n\nThe above copyright notice and this permission notice shall be included in all\ncopies or substantial portions of the Software.\n\nTHE SOFTWARE IS PROVIDED \"AS IS\", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR\nIMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,\nFITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE\nAUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER\nLIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,\nOUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE\nSOFTWARE." "LICENSE" nil nil nil "/home/philip/.doom.d/snippets/python-mode/LICENSE" nil nil)))


;;; Snippet definitions:
;;;
(yas-define-snippets 'python-mode
                     '(("snippet_successive.gif" "GIF89a\230B\367                     \n \n\f\f \f			\f\f\f\f
\354 /02@\206\234\304A\\Lp5`\306T\260U\260>,s\2201\326Am\240\302\340  \260\243\310ל\315ۼ\302l \344P\315]\374\305a<\306\34600PM\200
&(Zmh}C2\222\222%*a	X3!&2\242fL~c}ެ\372*R\321\"C\263\262.nx)p\221]\370\274\223m\\\203i\211aO~2\352\311u\"\236&˩Ib\222[O\217Ӕ\346v\267\275\375\355\363l#\340&w\271\315}n\341\211\335\353fw\273ݭu\277[\336\363\2467g !\371 \376 ,  C\230\376  \377 \375	H\260\240\301\203*L裡Æ\373\"J\214\240\242ŋ3j\334ȱ\243Ǐ C\212\\H\262\244ɓ(S\252\\ɲ\245˗0cʜI\263\246͛8s\352\334ɳ\247ϟ@W>|8q\242ȣH\223*]:2\250ӧP\243J\235J\265\252իX\263j\335\312\365\240C+\340\360\371ST\"ӳhӪ\305ص\255۷p\343ʝK\267\256ݻ::gŊ\217\262\327\nL\230#\336È+^̸\261\343\307U~\342\346\360\2763\206̹\263\347ϠC\213\335Ӈ\267\242dk^\315:)\351װc˞M\2736V\207\333(CTݺ\267\203N\274\270\361ظu\377-\352\357\362\357\347ϏK\237N\275\272\365\353N\223Wf\356\272w\326\330Ë\377O\276\374u\355\273'6\377\316^\263\371\367\360\343˟\257X\273\277\345껷߿\226\276\377\377 (`i
\220\362}ܳ\240R\300\220IlR\235\224\342'\242G8\204{Ht\243\303\350\312f:$ģ@>\350?\356-~m\f\307.\205HGN\332d\230\341\343 \267\347=;\346\303\314|\246:\327i\221\346Çn<!:\nA\312q|2\233\227Tb&\273	\377L\233\244\343'\210	\206\315\324D^\360\20276\231Nv:\364\241\f9\3406\300\201\n\f\344H\3079@\370?\346\323 \274Ԥ7k\"r\344c'\324d>\346э\200\344\216\367\2708\274\240\312\352A\364\2467=\240(\3317\376-\246\2418
                       ("snippet_parse.gif" "GIF89a\230B\367                      \n \n\f\f \f


;;; Do not edit! File generated at Tue Oct 12 15:20:55 2021