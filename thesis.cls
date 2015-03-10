%% thesis.cls
%% Author: henning mueller <henning@orgizm.net>

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{thesis}
\LoadClass[a4paper,11pt,chapterprefix=true]{scrbook}

% Package dependencies and configuration.
\RequirePackage[utf8]{inputenc}

\RequirePackage[printonlyused]{acronym}
\RequirePackage{amssymb}
\RequirePackage[scale=1.5]{ccicons}
\RequirePackage{csquotes}
\RequirePackage{float}
\RequirePackage{graphicx}
\RequirePackage{lscape}
\RequirePackage{multicol}
\RequirePackage{xcolor}

\RequirePackage{mathpazo}
\RequirePackage{tgpagella}
\RequirePackage[scaled=.95]{helvet}
\RequirePackage{courier}
\linespread{1.1875}

\RequirePackage{tikz}
\RequirePackage{pgf-umlsd}
\RequirePackage{scalefnt}
\usetikzlibrary{arrows}

\RequirePackage[backend=biber]{biblatex}
\ExecuteBibliographyOptions{hyperref=true,backref=true}
\IfFileExists{bibliography.bib}{\addbibresource{bibliography.bib}}

\RequirePackage{geometry}

\IfFileExists{.no_color}{
	\RequirePackage[pdfusetitle,hidelinks]{hyperref}
}{
	\RequirePackage[pdfusetitle]{hyperref}
	\definecolor{darkblue}{RGB}{0,0,112}
	\newcommand{\linkcolor}{darkblue}
	\hypersetup{
		colorlinks=true,
		pdfborder={0 0 0},
		linkcolor=\linkcolor,
		linktoc=all,
		urlcolor=\linkcolor,
		citecolor=\linkcolor
	}
}

\RequirePackage{listings}
\lstset{
	language=Ruby,
	tabsize=2,
	numbers=left,
	numberstyle=\scriptsize\rmfamily,
	basicstyle=\small\ttfamily,
	keywordstyle=\bfseries,
	commentstyle=\itshape,
	backgroundcolor=\color{black!05},
	showstringspaces=false,
	breaklines=true,
	prebreak=\raisebox{0ex}[0ex][0ex]{\ensuremath{\hookleftarrow}},
	xleftmargin=1.5em,
	framexleftmargin=0.5em,
	framexrightmargin=0.5em
}

\RequirePackage[headsepline]{scrpage2}
\pagestyle{scrheadings}
\ohead{\normalfont\sffamily\rightmark}

\RequirePackage{url}
\IfFileExists{urls.tex}{\input{urls}}

% Include review.tex if existing (can contain review specific commands).
\IfFileExists{review.tex}{\include{review}}

% Change chapter styling.
\addtokomafont{chapterprefix}{\Large\normalfont\fontfamily{pag}\selectfont}
\addtokomafont{chapter}{\Huge}
\renewcommand*{\chapterformat}{\@chapapp\space\thechapter}
\renewcommand*{\chapterheadstartvskip}{\vspace{0\baselineskip}}
\renewcommand*{\chapterheadendvskip}{\vspace{4\baselineskip}}

% Inline comment.
\newcommand{\comment}[2]{#2}
\newcommand{\todo}[2]{#2}

% Easy reference to section name and page.
\newcommand{\textref}[1]{"\nameref{#1}" (\autoref{#1}) on page \pageref{#1}}
\newcommand{\textsecref}[1]{"\nameref{#1}" section on page \pageref{#1}}

% Date DD.MM.YYYY
\newcommand{\datede}{\two@digits{\day}.\two@digits{\month}.\the\year}

% Aliases for yes and no in comparison table.
\newcommand{\y}{\checkmark}
\newcommand{\n}{$\times$}

% This prevents overfull lines and too much hyphenation. However, manually
% check overfull lines and repair with \linebreak and \- before printing!
\tolerance=1414
\hbadness=1414
\emergencystretch=1.5em
\hfuzz=0.3pt
\widowpenalty=10000
\vfuzz=\hfuzz
\raggedbottom
