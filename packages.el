;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; To install a package with Doom you must declare them here, run 'doom sync' on
;; the command line, then restart Emacs for the changes to take effect.
;; Alternatively, use M-x doom/reload.
;;
;; WARNING: Disabling core packages listed in ~/.emacs.d/core/packages.el may
;; have nasty side-effects and is not recommended.


;; All of Doom's packages are pinned to a specific commit, and updated from
;; release to release. To un-pin all packages and live on the edge, do:
;(unpin! t)

;; ...but to unpin a single package:
;(unpin! pinned-package)
;; Use it to unpin multiple packages
;(unpin! pinned-package another-pinned-package)


;; To install SOME-PACKAGE from MELPA, ELPA or emacsmirror:
;(package! some-package)

;; To install a package directly from a particular repo, you'll need to specify
;; a `:recipe'. You'll find documentation on what `:recipe' accepts here:
;; https://github.com/raxod502/straight.el#the-recipe-format
;(package! another-package
;  :recipe (:host github :repo "username/repo"))

;; If the package you are trying to install does not contain a PACKAGENAME.el
;; file, or is located in a subdirectory of the repo, you'll need to specify
;; `:files' in the `:recipe':
;(package! this-package
;  :recipe (:host github :repo "username/repo"
;           :files ("some-file.el" "src/lisp/*.el")))

;; If you'd like to disable a package included with Doom, for whatever reason,
;; you can do so here with the `:disable' property:
;(package! builtin-package :disable t)

;; You can override the recipe of a built in package without having to specify
;; all the properties for `:recipe'. These will inherit the rest of its recipe
;; from Doom or MELPA/ELPA/Emacsmirror:
;(package! builtin-package :recipe (:nonrecursive t))
;(package! builtin-package-2 :recipe (:repo "myfork/package"))

;; Specify a `:branch' to install a package from a particular branch or tag.
;; This is required for some packages whose default branch isn't 'master' (which
;; our package manager can't deal with; see raxod502/straight.el#279)
;(package! builtin-package :recipe (:branch "develop"))


(package! blacken :recipe (:local-repo "./modules/python"
                                  :files ("blacken.el")))
(package! beancount :recipe (:host github :repo "beancount/beancount-mode"))
;; * Mail
(package! mu4e-maildirs-extension)
;; * Writing
(package! academic-phrases)
;; * Org
(package! org-chef)
(package! ox-reveal)
(package! ox-pandoc)
(package! org-gcal)
(package! cdlatex)
(package! org-sidebar)
(package! org-mime)
(package! org-preview-html)
;; toggel latex fragments automatically
;; (package! org-fragtog )
;; better agenda
(package! org-super-agenda :pin "dd0d104c26")
;; Declarative Org Capture Templates
(package! doct
  :recipe (:host github :repo "progfolio/doct")
  :pin "c237e72e0b")
;; org graph view: give it another try
(package! org-graph-view :recipe (:host github :repo "alphapapa/org-graph-view") )

(unpin! org-roam)
(package! websocket)
(package! org-roam-ui :recipe (:host github :repo "org-roam/org-roam-ui" :files ("*.el" "out")))

;; (package! org-colored-text :recipe (:host github :repo "jkitchin/jmax" :files ("org-colored-text.el")))
(package! org-colored-text :recipe (:local-repo "./modules/org"
                                    :files ("org-colored-text.el")))
;; Org Ref
(package! org-ref)
(package! org-noter)
(package! theme-magic)
;; Python
(package! sphinx-doc)
;;
;; * Other
(package! ob-translate)
(package! popup-kill-ring)
(package! ranger) ; load here to not modify dired too much
(package! helm-org-rifle)
(package! company-tabnine :disable t)
;; (package! company-lsp :disable nil)
;; (package! company-math)
(package! mathpix.el
  :recipe (:host github :repo "jethrokuan/mathpix.el")
)
;; (package! dired+)
;; (package! snails
;;   :recipe (:host github :repo "manateelazycat/snails" :files ("*.el" "*.sh") :no-byte-compile t))
;; ;; (package! polymode :recipe
;;    (:host github :repo "polymode/polymode"))

;; (package! org-fstree :recipe (:local-repo "./modules/org"
                                         ;; :files ("org-fstree.el")))

(package! ox-koma-letter :recipe (:local-repo "./modules/org"
                                  :files ("ox-koma-letter.el")))

;; (package! webkit-katex-renderer :recipe (:host github :repo "fuxialexander/emacs-webkit-katex-render"
;;                                   :files ("webkit-katex-render.el")))

(package! calctex :recipe (:host github :repo "johnbcoughlin/calctex"
                                 :files ("*.el")) :pin "542b628eb4")
(package! sentence-highlight)
;; (package! org-msg :recipe (:host github :repo "bottom-bracket/org-msg"))
;; (package! org-msg :recipe (:local-repo "./modules/org-msg"
;;                            :files ("org-msg.el")))

;; ws-butler spoils the undo history when you save a file while having the cursor on a freshly added trailing whitespace.
;; the fix https://github.com/hlissner/doom-emacs/commit/c59ae5d172c9c4b044c597bfdcf35c01e2d3eb8e seems to resolve the issue
;; but introdudes an annoying deletion of the last whitespace in a line whenever the buffer autosaves.
(package! ws-butler :disable t)
;; (package! pdf-tools :pin )
;; (package! tablist :pin )

(package! ox-ipynb :recipe (:host github :repo "jkitchin/ox-ipynb" :files ("ox-ipynb.el")))

(package! org-contrib)
(unpin! org-msg)
;; (unpin! org-mode)
