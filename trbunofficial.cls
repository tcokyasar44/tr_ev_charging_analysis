\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{trbunofficial}[2017/06/10 TRB latex template]

\LoadClass[titlepage, oneside, 12pt]{article}

\RequirePackage[tiny, rm, pagestyles]{titlesec}
\RequirePackage{enumitem}
\RequirePackage{ccaption}
\RequirePackage[fleqn]{amsmath}
\RequirePackage{mathptmx}
\RequirePackage[T1]{fontenc}
\RequirePackage{textcomp}
\RequirePackage[pagewise, mathlines]{lineno}
\RequirePackage{geometry}
\RequirePackage{lastpage}

% TRB New Rules use Chicago Author-Date (Author Year) formatting without numbering
\RequirePackage[authoryear,round]{natbib}

\DeclareOption{numbered}{%
  \linenumbers%
}
\ProcessOptions\relax

\def\@AuthorHeaders{Name1, Name2 and Name3}
\newcommand{\AuthorHeaders}[1]{
  \def\@AuthorHeaders{#1}
}

\geometry{textwidth=6.5in, textheight=9.0in}
\geometry{top=1in, left=1in}
\geometry{headheight=0.3in, headsep=0.2in}

\setlength{\parindent}{0.5in}

% Page Numbers must be centered at the bottom of the page
\newpagestyle{main}{
\sethead{\@AuthorHeaders}{}{}
\setfoot{}{\thepage}{}
}
\pagestyle{main}

\renewcommand*{\refname}{\uppercase{References}}
\titleformat{\section}{\bfseries}{}{0pt}{\uppercase}
\titlespacing*{\section}{0pt}{12pt}{*0}
\titleformat{\subsection}{\bfseries}{}{0pt}{}
\titlespacing*{\subsection}{0pt}{12pt}{*0}
\titleformat{\subsubsection}{\itshape}{}{0pt}{}
\titlespacing*{\subsubsection}{0pt}{12pt}{*0}

\setlength{\mathindent}{0in}
\g@addto@macro\normalsize{%
  \setlength\abovedisplayskip{0pt}
  \setlength\belowdisplayskip{0pt}
  \setlength\abovedisplayshortskip{0pt}
  \setlength\belowdisplayshortskip{0pt}
}

\setlist[1]{labelindent=0.5in,leftmargin=*}
\setlist[2]{labelindent=0in,leftmargin=*}
\setlist{nosep}

\renewcommand{\fnum@figure}{\bfseries FIGURE~\thefigure}
\renewcommand{\fnum@table}{\bfseries TABLE~\thetable}
\captiontitlefont{\bfseries \boldmath}
\captiondelim{\;}

% Set citation format to (Author Year)
\setcitestyle{round,aysep={}}
\renewcommand{\cite}[1]{\citep{#1}}

\setlength{\bibsep}{0pt plus 0.3ex}
\renewcommand\linenumberfont{\normalfont\small}

% Output Title Page with Total Pages instead of Word Count
\renewcommand{\maketitle}{%
	\thispagestyle{empty}
	\begin{flushleft}
		{\bfseries\@title}\\
		\hfill\break%
		\hfill\break%
		\hfill\break%
		\@author\\
		\hfill\break%
		\hfill\break%
		Total Number of Pages: \pageref{LastPage}\\
		\hfill\break%
		\hfill\break%
		\hfill\break%
		Submission Date: \today
        \\\textsuperscript{*}Corresponding Author
	\end{flushleft}
	\newpage
}