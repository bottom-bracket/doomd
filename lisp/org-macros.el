;;; ~/.dotfiles/.doom.d/lisp/org-macros.el -*- lexical-binding: t; -*-
(setq org-export-global-macros
      '(
        ("clearpage" . "@@latex:\\clearpage@@@@odt:<text:p text:style-name='PageBreak'/>@@")
        ("color" . "@@html:<span style='color: $1'>$2</span>@@@@latex:\\textcolor{$1}{$2}@@@@odt:<text:span text:style-name=\"$1\">$2</text:span>@@")
        ("loremipsum" . "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.")
        ("newline" . "@@latex:\\hspace{0pt}\\@@ @@html:<br>@@")
        ("dvipng-when-odt" . "(eval (if (org-export-derived-backend-p org-export-current-backend 'odt) \"#+OPTIONS: tex:dvipng\" ))")
        ("if-latex-else" . "(eval (if (org-export-derived-backend-p org-export-current-backend 'latex) \"$1\" \"$2\"))")
        ("image" . "\\includegraphics{$1}")
        ("version-history" . "call_version-history[:eval yes]()[:eval yes :results table :colnames '(Version Date Author Comment)]")
        ("toc" . "#+toc: headlines $1")
        ("si" . "@@latex:\\SI{$1}{$2}@@@@html:$1 $3@@")
        ("siu" . "@@latex:\\si{$1}@@@@html:$2 @@")
        ))
