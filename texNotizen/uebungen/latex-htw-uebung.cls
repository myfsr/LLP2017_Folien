\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{latex-htw-2015-uebung}[2015/05/17]
\LoadClass[parskip=half-]{scrartcl}

%%%

\RequirePackage[T1]{fontenc}
\RequirePackage[utf8]{inputenc}
\RequirePackage[ngerman]{babel}

\RequirePackage[scale=0.95]{tgpagella}
\RequirePackage[scale=0.92]{tgheros}
\RequirePackage[scaled=0.83]{beramono}
\RequirePackage{mathpazo}
\RequirePackage{pdfpages}
\RequirePackage{csquotes}

\RequirePackage{listings,xcolor}
\lstset{language=[LaTeX]TeX,
  basicstyle=\ttfamily,
  keywordstyle={\color{blue}\bfseries},
  frame=tb,
  extendedchars=true,
  literate=%
    {ä}{{\"a}}1
    {ö}{{\"o}}1
    {ü}{{\"u}}1
    {Ä}{{\"A}}1
    {Ö}{{\"O}}1
    {Ü}{{\"U}}1
    {ß}{{\ss}}1,
    numbers=left,
    numberstyle=\tiny,
    stepnumber=1,
    morekeywords={[0]lvert,rvert,mathbb,maketitle,printbibliography,addbibresource,autocite,footcite,middle,
    visible,uncover,usetheme,only,frametitle,institute},
    escapeinside={(*@}{@*)},
}

\RequirePackage{etoolbox}
\BeforeBeginEnvironment{lstlisting}{\medskip}
\AfterEndEnvironment{lstlisting}{\medskip}

\RequirePackage{tikz}
\RequirePackage{graphicx}
\RequirePackage{url}
\RequirePackage{amsmath}

\pagestyle{empty}

%%%

\renewcommand{\maketitle}{
  \begin{tikzpicture}[overlay]
    \node at (12.2,0.3) [black!50,text width=5.5cm,align=right] {\url{http://algebra20.de/dtl1516}};
    \node at (4,0.4) {\scalebox{2}{\textcolor{black!20}{\Huge Einführung}}};
    \node at (12, -2.5) {\scalebox{2}{\textcolor{black!20}{\Huge in
          \LaTeX}}};
  \end{tikzpicture}

  \begin{center}
    \makeatletter
    \textcolor{black}{\LARGE \textbf{\textsc{\@title}}}

    \textcolor{black!70}{\@date}
    \makeatother
  \end{center}
  \textcolor{black!50}{\null }
  \medskip

  \vspace*{2\baselineskip}
}

\AtBeginDocument{\maketitle}

%%%

\newcounter{tasks}[enumi]
\setcounter{tasks}{0}
\newcommand{\NewTask}{
  \refstepcounter{tasks}
  \section*{\thetasks.~Aufgabe}
}
