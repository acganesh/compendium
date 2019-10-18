# stanford-compendium

This is a compendium of course notes from my time at Stanford.  Still under construction.

These contain some typos, since I mostly took these notes live in lecture.  All errors (typographical or conceptual) are my own.

# Workflow

- `adi.sty`.  I wrote a small LaTeX style file that includes common macros / typesetting configuration that I use often.
- [`latexmk`](https://ctan.org/pkg/latexmk?lang=en): A perl script that provides auto-compilation on save for LaTeX documents.
- [`vim`](https://www.vim.org/): The best editor.  I use macros / registers to Input repeated snippets of LaTeX code: e.g. `\sum_{n=1}^{\infty}` or `\int_{0}^{\infty} f(t) e^{-st} dt`.
- [`vim-latex`](http://vim-latex.sourceforge.net/): Vim package with smart braces, "jump" functionality for environments, and 1-2 character macros for most symbols (e.g. `<Leader>a` outputs `\alpha` in the source file).
- [`zathura`](https://github.com/pwmt/zathura): Lightweight document viewer with `vim`-like keybindings.
- [`inkscape-figures`](https://github.com/gillescastel/inkscape-figures): This is more recent, but I've found that this package makes it very easy to produce vector graphics using Inkscape (as opposed to [`pgf` / `TikZ`](https://ctan.org/pkg/pgf?lang=en)).
- `exam-sheet`: Using @jcreus's `xelatex` template to create dense review sheets for exams.  Requires miniature phonebook fonts (`bell.ttf`, etc.) (More documentation forthcoming. For instance, see the review sheet for `CS110`).
- [`tmux`](https://github.com/tmux/tmux) Terminal multiplexer, with panes split for `vim`, `latexmk`, `zathura`.
- [`i3wm`](https://i3wm.org/): Linux window manager, used for quick tiling / focus on `tmux` / `zathura`.
- `stats.hs`: A short Haskell program to compute number of lines of TeX produced so far (I'd like to expand on this when I have time).

# Course list

Here is a list of courses that are represented in this repo.  Some of the earlier courses have less detailed notes (as early on college I hadn't perfected my workflow).

- [CS43: Functional Programming Paradigms](https://stanford-lambda.gitlab.io/).  (Notes forthcoming, offered in Winter 2020 quarter).  Lectures: Isaac Schienfeld and Adithya Ganesh.
- EE376A / MATH DRP: Information Theory.  Lectures: Tsachy Weissman.  DRP discussions: Yuval Wigderson.
- CS273B: Deep Learning for Genomics (todo: need to add).  Lectures: Anshul Kundaje.
- CS229: Machine Learning (todo: need to add).  Lectures: Andrew Ng and John Duchi.
- CS279: Computational Biology.  Lectures: Ron Dror.
- CS236: Deep Generative Models.  Lectures: Aditya Grover and Stefano Ermon.
- CS161: Algorithms.  
- CS107: Systems I.  Lectures: Jerry Cain.
- CS109: Probability.  Lectures: Mehran Sahami.
- CS110: Systems II.  Lectures: Jerry Cain.
- MATH53: Ordinary Differential Equations.  Lectures: Andrea Ottolini.
- MATH104: Applied Matrix Theory.  Lectures: Katerina Velcheva.
- MATH113: (Theoretical) Matrix Theory.  Lectures: Michael Kemeny.
- MATH116: Complex Analysis.  Lectures: Thomas Church.
- MATH120: Group Theory.  Lectures: Thomas Church.
- MATH171: Real Analysis.  Lectures: George Schaeffer.
- POLISCI 101Z: Introduction to International Relations.  Lectures: Mike Tomz.  Discussions: Iris Malone.
- Independent Study: Statistical learning.
