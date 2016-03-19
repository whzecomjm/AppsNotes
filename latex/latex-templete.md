LaTeX 简单英文模板
===

我用的模板，这里只是备份一下。

```
\documentclass{article}
\title{Notes on Aperiodic Oderer}
\author{whzecomjm}
\usepackage{amsmath,amsfonts,amsthm}
\usepackage[colorlinks=true,urlcolor=blue]{hyperref}

\theoremstyle{plain}
\newtheorem{thm}{Theorem}[section]
\newtheorem{lem}[thm]{Lemma}
\newtheorem{prop}[thm]{Proposition}
\newtheorem*{cor}{Corollary}

\theoremstyle{definition}
\newtheorem{defn}{Definition}[section]
\newtheorem{conj}{Conjecture}[section]
\newtheorem{exmp}{Example}[section]

\theoremstyle{remark}
\newtheorem*{rem}{Remark}
\newtheorem*{note}{Note}

\newcommand{\R}{\mathbb R}
\newcommand{\C}{\mathbb C}
\newcommand{\N}{\mathbb N}
\newcommand{\Q}{\mathbb Q}
\newcommand{\Z}{\mathbb Z}
\newcommand{\cA}{\mathcal A}
\newcommand{\tuple}[1]{\langle #1 \rangle}
\begin{document}

\maketitle

\begin{thebibliography}{99}
\bibitem{solo1} B. Solomyak, \href{http://u.math.biu.ac.il/~solomyb/GRAD/14/Aper/Aperiodic.docx}{Mathematics of Aperiodic Order}, 2015.
\end{thebibliography}
\end{document}
```