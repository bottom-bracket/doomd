;;; Compiled snippets and support files for `org-mode'
;;; Snippet definitions:
;;;
(yas-define-snippets 'org-mode
                     '(("lfighor" "#+NAME: fig:${2:main label}\n#+CAPTION:${1:main caption}\n#+BEGIN_figure\n\\centering\n#+NAME: fig:${3:first label}\n#+ATTR_LATEX: :options [c]{0.5\\textwidth}\n#+BEGIN_subfigure\n\\includegraphics[width=1\\textwidth]{$0}\n\\subcaption{${5:first subcaption}}\n#+END_subfigure\n#+NAME: fig:${4:second label}\n#+ATTR_LATEX: :options [c]{0.5\\textwidth}\n#+BEGIN_subfigure\n\\includegraphics[width=1\\textwidth]{/pathtofig2.png}\n\\subcaption{${6:second subcaption}}\n#+END_subfigure\n#+END_figure" "Two figures horizontal (for latex)" nil nil nil "/home/philip/.doom.d/snippets/org-mode/twofighor.yasnippet" nil "")
                       ("title" "#+TITLE: ${1:title}" "title"
                        (=
                         (current-column)
                         5)
                        nil nil "/home/philip/.doom.d/snippets/org-mode/title.yasnippet" nil nil)
                       ("tkz" "#+CAPTION: $1\n#+LABEL: ${2:\"waiting\"$(unless yas/modified-p (reftex-label \"figure\" 'dont-insert))}\n#+ATTR_HTML: alt=\"$1\" width=\"$3%\"\n#+ATTR_LATEX: width=0.$3\\textwidth\n#+ATTR_ODT: (:scale 0.$3)\n#+HEADERS: :imagemagick yes :iminoptions -density 300 -resize 400\n#+HEADERS: :packages '((\"\" \"tikz\") (\"\" \"tkz-berge\")) :border 1pt\n#+BEGIN_SRC latex :file ${2:$(substring yas/text 4)}.png\n  \\begin{tikzpicture}\n    ${0}\n  \\end{tikzpicture}\n#+END_SRC\n" "tikz-figure"
                        (or
                         (=
                          (current-column)
                          3)
                         (=
                          (current-column)
                          0))
                        nil nil "/home/philip/.doom.d/snippets/org-mode/tikz-figure.yasnippet" "C-c y z" nil)
                       ("thm" "# <<$1>>\n#+BEGIN_THEOREM\n#+latex: \\label{${1:\"waiting\"$(unless yas/modified-p (reftex-label \"theorem\" 'dont-insert))}}%\n$0\n#+END_THEOREM" "theorem"
                        (or
                         (=
                          (current-column)
                          3)
                         (=
                          (current-column)
                          0))
                        nil nil "/home/philip/.doom.d/snippets/org-mode/theorem.yasnippet" "C-c y t" nil)
                       ("text" "#+TEXT: ${1:text}" "text"
                        (or
                         (=
                          (current-column)
                          4)
                         (=
                          (current-column)
                          0))
                        nil nil "/home/philip/.doom.d/snippets/org-mode/text.yasnippet" nil nil)
                       ("tab_" "#+CAPTION: $1\n#+ATTR_LATEX: :environment tabularx :booktabs t :font \\footnotesize :width \\textwidth :align $4\n#+LABEL: tab:$2\n$3\n$0\n\n" "table" nil nil nil "/home/philip/.doom.d/snippets/org-mode/tab" nil nil)
                       ("sta" "#+STARTUP: ${1:options}" "startup"
                        (or
                         (=
                          (current-column)
                          3)
                         (=
                          (current-column)
                          0))
                        nil nil "/home/philip/.doom.d/snippets/org-mode/startup.yasnippet" nil nil)
                       ("stab_" "#+CAPTION: $1\n#+ATTR_LATEX: :environment tabularx :booktabs t :font \\footnotesize :width \\textwidth :align $4 :float sideways\n#+LABEL: tab:$2\n$3\n$0\n" "Sideway table" t nil nil "/home/philip/.doom.d/snippets/org-mode/stab" nil nil)
                       ("sb" "#+NAME: ${1:name}\n#+BEGIN_SRC ${2:bash}\n  $3\n#+END_SRC\n" "#+srcname:..#+begin_src...#+end_src"
                        (or
                         (=
                          (current-column)
                          2)
                         (=
                          (current-column)
                          0))
                        nil nil "/home/philip/.doom.d/snippets/org-mode/sourceblock.yasnippet" "C-c y s" nil)
                       ("skh_" "**** ${1:$$(org-mac-skim-get-page)} :highlight:\n$0\n" "skim highlight" nil nil nil "/home/philip/.doom.d/snippets/org-mode/skh" nil nil)
                       ("pyimg" "#+NAME: ${1:`(make-temp-name \"\")`}\n#+BEGIN_SRC jupyter-python ${2::session ${3:`(file-name-base (buffer-file-name))`}} :var figurename=\"./resources/$1.png\" :exports none\n$0\n#+END_SRC\n#+CAPTION: $5\n#+NAME: fig:$1\n#+ATTR_ORG: :width 600\n#+ATTR_HTML: :width 800px\n#+ATTR_LATEX: :width 0.95\\textwidth\n[[file:./resources/$1.png]]\n" "ipython-figure" nil nil nil "/home/philip/.doom.d/snippets/org-mode/pyimg" nil nil)
                       ("pro" "# <<$1>>\n#+BEGIN_PROPOSITION\n#+latex: \\label{${1:\"waiting\"$(unless yas/modified-p (reftex-label \"proposition\" 'dont-insert))}}%\n$0\n#+END_PROPOSITION" "proposition"
                        (or
                         (=
                          (current-column)
                          3)
                         (=
                          (current-column)
                          0))
                        nil nil "/home/philip/.doom.d/snippets/org-mode/proposition.yasnippet" "C-c y p" nil)
                       ("properties" " :PROPERTIES:\n :VISIBILITY:folded:\n :END:\n" "properties folded"
                        (=
                         (current-column)
                         10)
                        nil nil "/home/philip/.doom.d/snippets/org-mode/propertiesfolded.yasnippet" nil nil)
                       ("prf" "#+BEGIN_PROOF\n$0\n#+END_PROOF" "proof"
                        (or
                         (=
                          (current-column)
                          3)
                         (=
                          (current-column)
                          0))
                        nil nil "/home/philip/.doom.d/snippets/org-mode/proof.yasnippet" nil nil)
                       ("phfn" "../figures/labelyouraxes.jpeg" "placeholder-figure-name" nil nil nil "/home/philip/.doom.d/snippets/org-mode/placeholder-figure-name.yassnippet" nil nil)
                       ("opt" "#+OPTIONS: ${0}" "options"
                        (or
                         (=
                          (current-column)
                          3)
                         (=
                          (current-column)
                          0))
                        nil nil "/home/philip/.doom.d/snippets/org-mode/options.yasnippet" "C-c y o" nil)
                       ("obp_" "#+NAME: $1\n#+BEGIN_SRC ipython :ipyfile ~/Dropbox/org/.attach/$1_`(format-time-string \"%Y-%m-%d\")`.png :tangle /ssh:xfu@hpc14:/research/kevinyip10/xfu/hscr/pipeline/$1.py\n%matplotlib inline\n$0\n#+END_SRC\n\n#+RESULTS: $1\n\n" "ob-ipython with plot" nil nil nil "/home/philip/.doom.d/snippets/org-mode/obp" nil nil)
                       ("obh_" ":header-args:ipython: :session remote-$3-kernel-$2-ssh.json :pydir /ssh:xfu@${3:$$(yas-choose-value '( \"hpc7\" \"hpc8\" \"hpc9\" \"hpc10\" \"hpc11\" \"hpc12\" \"hpc13\" \"hpc14\" \"hpc15\" \"gpu8\"))}:/research/kevinyip10/xfu/$4 :exports both :async t :results raw drawer\n" "hpc ob-ipython kernel header" nil nil nil "/home/philip/.doom.d/snippets/org-mode/obh" nil nil)
                       ("note" ":NOTER_DOCUMENT: ../Literature/pdfs/`(org-entry-get (point) \"Custom_ID\")`\n" "noter_document" nil nil nil "/home/philip/.doom.d/snippets/org-mode/noter_prop.yasnippet" nil nil)
                       ("~" "\\nbsp$0" "non breaking space" nil nil nil "/home/philip/.doom.d/snippets/org-mode/nbsp.snippet" nil nil)
                       ("nw" "nanowire" "nanowire" t nil nil "/home/philip/.doom.d/snippets/org-mode/nanowire.yasnippet" nil nil)
                       ("#n" "#+NAME: $0" "name" t nil nil "/home/philip/.doom.d/snippets/org-mode/name" nil nil)
                       ("meff" "`(if ( texmathp )\n    \"M_{\\\\mathrm{eff}}\"\n    \"\\\\(M_{\\\\mathrm{eff}}\\\\)\")`\n" "m_eff" nil nil nil "/home/philip/.doom.d/snippets/org-mode/m_eff.yasnippet" nil "")
                       ("importipynb" "#+CALL: jupyter-to-org-current(path_ipymd=[[${1:link}]] , path_org=[[${2:link}]])" "load_ipynb_to_org" nil nil nil "/home/philip/.doom.d/snippets/org-mode/load_ipynb_to_org" nil nil)
                       ("link_" "[[$1][$2]] $0\n" "link" t nil nil "/home/philip/.doom.d/snippets/org-mode/link" nil nil)
                       ("lem" "# <<$1>>\n#+BEGIN_LEMMA\n#+LATEX: \\label{${1:\"waiting\"$(unless yas/modified-p (reftex-label \"lemma\" 'dont-insert))}}%\n$0\n#+END_LEMMA" "lemma"
                        (or
                         (=
                          (current-column)
                          3)
                         (=
                          (current-column)
                          0))
                        nil nil "/home/philip/.doom.d/snippets/org-mode/lemma.yasnippet" "C-c y l" nil)
                       ("begin" "\\begin{${1:$$(yas/choose-value (mapcar 'car (LaTeX-environment-list)))}}\n$0\n\\end{$1}" "\\begin{environment} ... \\end{environment}" nil
                        ("environments")
                        nil "/home/philip/.doom.d/snippets/org-mode/lbegin.yasnippet" nil nil)
                       ("lhe" "#+LATEX_HEADER: ${1:\\usepackage{$2}}\n" "LaTeX header"
                        (=
                         (current-column)
                         3)
                        nil nil "/home/philip/.doom.d/snippets/org-mode/latexheader.yasnippet" nil nil)
                       ("lcl" "#+LATEX_CLASS: ${1:$$(yas/choose-value '(\"report\" \"book\" \"article\"))}\n" "LaTeX class"
                        (=
                         (current-column)
                         3)
                        nil nil "/home/philip/.doom.d/snippets/org-mode/latexclass.yasnippet" nil nil)
                       ("lan" "#+LANGUAGE: ${1:$$(yas/choose-value '(\"en\" \"es\"))}\n" "language"
                        (=
                         (current-column)
                         3)
                        nil nil "/home/philip/.doom.d/snippets/org-mode/language.yasnippet" nil nil)
                       ("julia" "#+NAME: ${1:`(make-temp-name \"\")`}\n#+begin_src jupyter-julia :session ${2:`(file-name-base (buffer-file-name))`} :exports ${3:$$(yas-choose-value '(\"both\" \"results\" \"code\" \"none\"))} :tangle ./src/$2.jl\n$0\n#+end_src\n" "Julia block short" nil nil nil "/home/philip/.doom.d/snippets/org-mode/julia_short" nil nil)
                       ("jlimg" "#+NAME: ${1:`(make-temp-name \"\")`}\n#+BEGIN_SRC jupyter-julia ${2: :session ${3:`(file-name-base (buffer-file-name))`}} :var figurename=\"./resources/$1.png\" :exports ${4:$$(yas-choose-value '(\"code\" \"none\"))} :results none :tangle ./src/$3.jl\n$0\n#+END_SRC\n#+CAPTION: $6\n#+LABEL: fig:$1\n#+ATTR_LATEX: :width 0.5\\textwidth\n[[file:./resources/$1.png]]\n" "Julia with image" nil nil nil "/home/philip/.doom.d/snippets/org-mode/jlimg" nil nil)
                       ("ipys" "#+NAME: ${1:`(make-temp-name \"\")`}\n#+BEGIN_SRC jupyter-python ${2::session ${3:`(file-name-base (buffer-file-name))`}} :exports ${4:$$(yas-choose-value '(\"both\" \"results\" \"code\" \"none\"))} :tangle ./src/$3.py\n  $0\n#+END_SRC" "ipython block short" nil nil nil "/home/philip/.doom.d/snippets/org-mode/ipython_session.snippet" nil nil)
                       ("ipy" "#+NAME: ${1:`(make-temp-name \"\")`}\n#+BEGIN_SRC jupyter-python :exports ${2:$$(yas-choose-value '(\"both\" \"results\" \"code\" \"none\"))}\n$0\n#+END_SRC" "ipython block short" nil nil nil "/home/philip/.doom.d/snippets/org-mode/ipython_block_short" nil nil)
                       ("ipyt" "#+BEGIN_SRC ipython :session ${1::ipyfile ${2:$$(let ((temporary-file-directory \"./org_plots/\")) (make-temp-file \"py\" nil \".png\"))} }:exports ${3:both}\n$0\n#+END_SRC\n" "ipython block tempfile" nil nil nil "/home/philip/.doom.d/snippets/org-mode/ipython_block" nil nil)
                       ("install.sh" "#!/bin/bash\n\n# Check for command line args.\nif [ \"$1\" = \"\" ]; then\n	echo \"Usage: ./install.sh yasnippet-dir\"\n	echo \"Example: ./install.sh ~/.emacs.d/plugins/yasnippet\"\n    echo \"This makes a \\\"snippets/org-mode\\\" folder and installs there\"\n	exit 1\nfi\n\n# Create the latex-mode dir.\nif [ ! -d \"$1\"/snippets/org-mode ]; then\n	mkdir \"$1\"/snippets/org-mode\nfi\n\n# Copy needed files to the latex-mode dir.\ncp *.yasnippet \"$1\"/snippets/org-mode/\ncp .yas-parents \"$1\"/snippets/org-mode/\ncp .yas-ignore-filenames-as-triggers \"$1\"/snippets/org-mode/\ncp .yas-make-groups \"$1\"/snippets/org-mode/\n\nexit 0\n" "install.sh" nil nil nil "/home/philip/.doom.d/snippets/org-mode/install.sh" nil nil)
                       ("figin" "#+CAPTION: ${1:caption}\n#+LABEL: fig:${2:label}\n[[${3:link}]]" "figure" nil nil nil "/home/philip/.doom.d/snippets/org-mode/insert_figure" nil nil)
                       ("frac" "\\frac{${1:numerator}}{${2:denominator}}$0" "frac" nil nil nil "/home/philip/.doom.d/snippets/org-mode/frac" nil nil)
                       ("ofig" "#+name: fig:${1:$(file-name-base yas-text)}\n#+caption[$2]:$0 \n[[file:${1:$$(unless yas-modified-p (completing-read \"File: \" 'read-file-name-internal))}]]\n" "figure"
                        (or
                         (=
                          (current-column)
                          4)
                         (=
                          (current-column)
                          0))
                        nil nil "/home/philip/.doom.d/snippets/org-mode/figure.yasnippet" "C-c y f" nil)
                       ("eqn" "# <<$1>>\n\\begin{${2:equation$$(yas-auto-next\n                (yas-choose-value\n                '(\"equation\" \"align\" \"multline\" \"equation*\" \"align*\" \"multline*\")))}}\n\\label{${1:\"waiting for reftex-label call...\"$(unless yas-modified-p (reftex-label nil 'dont-insert))}}%\n$0\n\\end{$2}\n" "equation"
                        (or
                         (=
                          (current-column)
                          3)
                         (=
                          (current-column)
                          0))
                        nil nil "/home/philip/.doom.d/snippets/org-mode/equation.yasnippet" "C-c y e" nil)
                       ("equ" "# <<eq:$1>>\n\\begin{${2:eq-env$$(yas-auto-next\n                (yas-choose-value\n                '(\"equation\" \"align\" \"multline\" \"equation*\" \"align*\" \"multline*\")))}}\n\\label{eq:${1:label}}\n$0\n\\end{$2}\n" "equation-simple"
                        (or
                         (=
                          (current-column)
                          3)
                         (=
                          (current-column)
                          0))
                        nil nil "/home/philip/.doom.d/snippets/org-mode/equation-simple.snippet" "C-c y e" nil)
                       ("e" "\\emph{$1}$0" "emph" nil nil nil "/home/philip/.doom.d/snippets/org-mode/emph" nil nil)
                       ("email" "#+EMAIL: ${1:`user-mail-address`}\n" "email"
                        (or
                         (=
                          (current-column)
                          5)
                         (=
                          (current-column)
                          0))
                        nil nil "/home/philip/.doom.d/snippets/org-mode/email.yasnippet" nil nil)
                       ("el" "#+NAME: $1\n#+BEGIN_SRC emacs-lisp\n$0\n#+END_SRC" "el (emacs-lisp)"
                        (=
                         (current-column)
                         2)
                        nil nil "/home/philip/.doom.d/snippets/org-mode/el.yasnippet" nil nil)
                       ("dt_" "#+HTML_HEAD_EXTRA: <script type=\"text/javascript\">\n#+HTML_HEAD_EXTRA:   $(document).ready(function() {\n#+HTML_HEAD_EXTRA:     $('#$2').DataTable(); } );\n#+HTML_HEAD_EXTRA: </script>\n#+CAPTION: $1\n#+ATTR_HTML: :id $2\n$0" "DataTable" nil nil nil "/home/philip/.doom.d/snippets/org-mode/dt" nil nil)
                       ("dit" "#+BEGIN_SRC ditaa ${1:export-file-name} -r -s -e\n${0}\n#+END_SRC\n" "ditaa"
                        (or
                         (=
                          (current-column)
                          3)
                         (=
                          (current-column)
                          0))
                        nil nil "/home/philip/.doom.d/snippets/org-mode/ditaa.yasnippet" nil nil)
                       ("def" "# <<$1>>\n#+BEGIN_DEFINITION\n#+LATEX: \\label{${1:\"waiting\"$(unless yas/modified-p (reftex-label \"definition\" 'dont-insert))}}%\n$0\n#+END_DEFINITION" "definition"
                        (or
                         (=
                          (current-column)
                          3)
                         (=
                          (current-column)
                          0))
                        nil nil "/home/philip/.doom.d/snippets/org-mode/definition.yasnippet" "C-c y d" nil)
                       ("date_" "`(format-time-string \"%Y-%m-%d_\")`$0" "date" t nil nil "/home/philip/.doom.d/snippets/org-mode/date" nil nil)
                       ("cor" "# <<$1>>\n#+BEGIN_COROLLARY\n#+latex: \\label{${1:\"waiting\"$(unless yas/modified-p (reftex-label \"corollary\" 'dont-insert))}}%\n$0\n#+END_COROLLARY" "corollary"
                        (or
                         (=
                          (current-column)
                          3)
                         (=
                          (current-column)
                          0))
                        nil nil "/home/philip/.doom.d/snippets/org-mode/corollary.yasnippet" "C-c y c" nil)
                       ("cap" "#+CAPTION:" "#+CAPTION:"
                        (=
                         (current-column)
                         3)
                        nil nil "/home/philip/.doom.d/snippets/org-mode/caption.yasnippet" nil nil)
                       ("brr_" "#+NAME: $1\n#+BEGIN_SRC jupyter-R :session $2 :kernel rik_ssh_$3_$3r :ipyfile ~/Dropbox/org/image/$1.png :dir /ssh:xfu@${3:$$(yas-choose-value '(\"hpc7\" \"hpc11\" \"hpc9\" \"gpu8\"))}:/research/kevinyip10/xfu/$4 :exports both :async t :results raw drawer :tangle /ssh:xfu@$3/$4/$1\n$0\n#+END_SRC" "hpc7 jupyter r" nil nil nil "/home/philip/.doom.d/snippets/org-mode/brr" nil nil)
                       ("brp_" "#+NAME: $1\n#+BEGIN_SRC ipython :session $2 :kernel rik_ssh_$3_$3python :ipyfile ~/Dropbox/org/.attach/$1_`(format-time-string \"%Y-%m-%d\")`.png :dir /ssh:xfu@${3:$$(yas-choose-value '(\"hpc7\" \"hpc11\" \"hpc9\" \"gpu8\"))}:/research/kevinyip10/xfu/$4 :exports both :async t :results raw drawer :tangle /ssh:xfu@$3/$4/$1\n%cd /research/kevinyip10/xfu/$4\n%matplotlib inline\n$0\n#+END_SRC\n\n\n\n" "hpc7 jupyter python" nil nil nil "/home/philip/.doom.d/snippets/org-mode/brp" nil nil)
                       ("brt_" "#+NAME: $1\n#+BEGIN_SRC $2 :dir /ssh:xfu@${3:$$(yas-choose-value '(\"hpc9:/research/kevinyip10/xfu\" \"proj26:/mnt/nas3/xfu\"))}/$4 :tangle /ssh:xfu@$3/$4/$1\n$0\n#+END_SRC\n\n#+RESULTS: $1" "babel remote" nil nil nil "/home/philip/.doom.d/snippets/org-mode/br" nil nil)
                       ("block" "#+BEGIN_$1 $2\n  $0\n#+END_$1\n" "#+begin_...#+end_"
                        (or
                         (=
                          (current-column)
                          5)
                         (=
                          (current-column)
                          0))
                        nil
                        ((yas/indent-line 'fixed)
                         (yas/wrap-around-region 'nil))
                        "/home/philip/.doom.d/snippets/org-mode/block.yasnippet" "C-c y b" nil)
                       ("beginm" "\\begin{${1:environment}}\n$0\n\\end{$1}" "Latex_begin_env" nil
                        ("environments")
                        nil "/home/philip/.doom.d/snippets/org-mode/begin" nil nil)
                       ("aut" "#+AUTHOR: ${1:`user-full-name`}\n" "author"
                        (or
                         (=
                          (current-column)
                          3)
                         (=
                          (current-column)
                          0))
                        nil nil "/home/philip/.doom.d/snippets/org-mode/author.yasnippet" "C-c y a" nil)
                       ("atl" "#+attr_latex: ${1::width $2\\linewidth}" "attr_latex"
                        (=
                         (current-column)
                         3)
                        nil nil "/home/philip/.doom.d/snippets/org-mode/attr_latex.yasnippet" nil nil)
                       ("ath" "#+ATTR_HTML: alt=\"$1\" img class=\"aligncenter\"\n" "attr_html"
                        (=
                         (current-column)
                         3)
                        nil nil "/home/philip/.doom.d/snippets/org-mode/attr_html.yasnippet" nil nil)
                       ("sr" "\\SIrange{${1:Number1}}{${2:Number2}}{${3:\\Unit}}\n" "SIrange" nil nil nil "/home/philip/.doom.d/snippets/org-mode/SIrange.yasnippet" nil nil)
                       ("sinm" "\\SI{$1}{\\\\${2:nano}\\meter} $0" "SInanometer" nil nil nil "/home/philip/.doom.d/snippets/org-mode/SInanometer.snippet" nil nil)
                       ("si" "{{{SI(${1:number},${2:\\unit},${3:unitshort})}}}" "SI" nil nil nil "/home/philip/.doom.d/snippets/org-mode/SI.yasnippet" nil nil)
                       ("README.org" "#+title: yasnippets\n#+options: ^:nil\n\nSnippets for org-mode. See [[https://github.com/capitaomorte/yasnippet][Yasnippet in Github]].\n\nThey have bindings ~C-c y~ plus an extra letter.\n\nI have added a ~condition~ statement so that the snippets can be\nexpanded only at the beginning of the line.\n\n| name                                | key        | letter | explanation                          |\n|-------------------------------------+------------+--------+--------------------------------------|\n| #+begin_ ...#+end_                  | block      | b      |                                      |\n| #+srcname:..#+begin_src...#+end_src | sb         | s      | source block with name               |\n| attr_html                           | ath        |        | alt=\"$1\" img class=\"aligncenter\"     |\n| attr_latex                          | atl        |        | ${1:width=$2\\textwidth}              |\n| author                              | aut        | a      | inserts ~#+author:~                    |\n| corollary                           | cor        | c      | (uses reftex)                        |\n| definition                          | def        | d      | (uses reftex)                        |\n| ditaa                               | dit        |        | #+begin_ditaa,+end_ditaa             |\n| el                                  | el         |        | #+begin_src emacs-lisp,+end_src      |\n| email                               | email      |        | inserts ~#+email:~                     |\n| equation                            | eqn        | e      | (uses reftex)                        |\n| figure                              | fig        | f      | asks for image file                  |\n| language                            | lan        |        | inserts ~#+language:~ (with choice)    |\n| LaTeX class                         | lcl        |        | inserts ~#+latex_class:~ (with choice) |\n| LaTeX header                        | lhe        |        | inserts ~#+latex_header:~              |\n| lemma                               | lem        | l      | (uses reftex)                        |\n| options                             | opt        | o      | inserts ~#+options:~                   |\n| proof                               | prf        |        |                                      |\n| properties folded                   | properties |        | inserts visibility folded property   |\n| proposition                         | pro        | p      | (uses reftex)                        |\n| startup                             | sta        |        | inserts ~#+startup:~                   |\n| text                                | text       |        | inserts ~#+text:~                      |\n| theorem                             | thm        | t      | (uses reftex)                        |\n| tikz-picture                        | tkz        | z      | (uses reftex)                        |\n| title                               | title      |        | inserts ~#+title:~                     |\n\n\n\n\n" "README.org" nil nil nil "/home/philip/.doom.d/snippets/org-mode/README.org" nil nil)))


;;; Do not edit! File generated at Tue Oct 12 15:20:55 2021
