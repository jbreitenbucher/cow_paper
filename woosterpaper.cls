%%
%% This is file `woosterpaper.cls',
%% a modification of the amsart class
%% by Dr. Jon Breitenbucher. It is
%% intended to serve as a template for
%% students doing papers at The College of
%% Wooster.
%% 
%% This file was created on 2007/01/01.
%% --------------------------------------------------------------
%% 
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.2
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.2 or later is part of all distributions of LaTeX
%% version 1999/12/01 or later.
%% 
%% The list of all files belonging to the LaTeX base distribution is
%% given in the file `manifest.txt'. See also `legal.txt' for additional
%% information.
%% 
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]% set the version of LaTeX
\ProvidesClass{woosterpaper}[2010/03/22 v1.1 Wooster paper class]

\DeclareOption*{\PassOptionsToClass{\CurrentOption}{amsart}}% any options available to AMS article are available to woosterpaper
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%the palatino option typesets the thesis in Palatino, the College font.- JB
\newif\if@backlinks
\expandafter\def\csname test@\jobname\endcsname{test}%
\def\t@st{test}%
\ifx\test@backlinks\t@st\@backlinkstrue\else\@backlinksfalse\fi
\DeclareOption{backlinks}{\@backlinkstrue}
%the palatino option typesets the thesis in Palatino, the College font.- JB
\newif\if@palatino
\expandafter\def\csname test@\jobname\endcsname{test}%
\def\t@st{test}%
\ifx\test@palatino\t@st\@palatinotrue\else\@palatinofalse\fi
\DeclareOption{palatino}{\@palatinotrue}
%the picins option loads the wrapfig package.- JB
\newif\if@picins
\expandafter\def\csname test@\jobname\endcsname{test}%
\def\t@st{test}%
\ifx\test@picins\t@st\@picinstrue\else\@picinsfalse\fi
\DeclareOption{picins}{\@picinstrue}
% option to produce a hyperlinked thesis for on-line viewing - JB
\newif\if@blacklinks
\expandafter\def\csname test@\jobname\endcsname{test}%
\def\t@st{test}%
\ifx\test@blacklinks\t@st\@blacklinkstrue\else\@blacklinksfalse\fi
\DeclareOption{blacklinks}{\@blacklinkstrue}
% option to use listings package for code listings - JB
\newif\if@code
\expandafter\def\csname test@\jobname\endcsname{test}%
\def\t@st{test}%
\ifx\test@code\t@st\@codetrue\else\@codefalse\fi
\DeclareOption{code}{\@codetrue}
% option to use maple2e package for including Maple worksheets - JB
\newif\if@maple
\expandafter\def\csname test@\jobname\endcsname{test}%
\def\t@st{test}%
\ifx\test@maple\t@st\@mapletrue\else\@maplefalse\fi
\DeclareOption{maple}{\@mapletrue}
% option to have an index - JB
% option to use verbatim package - JB
\newif\if@verbatim
\expandafter\def\csname test@\jobname\endcsname{test}%
\def\t@st{test}%
\ifx\test@verbatim\t@st\@verbatimtrue\else\@verbatimfalse\fi
\DeclareOption{verbatim}{\@verbatimtrue}
% option to use lettrine package for dropped caps - JB
\newif\if@dropcaps
\expandafter\def\csname test@\jobname\endcsname{test}%
\def\t@st{test}%
\ifx\test@dropcaps\t@st\@dropcapstrue\else\@dropcapsfalse\fi
\DeclareOption{dropcaps}{\@dropcapstrue}
% option to use alltt package - JB
\newif\if@alltt
\expandafter\def\csname test@\jobname\endcsname{test}%
\def\t@st{test}%
\ifx\test@alltt\t@st\@alltttrue\else\@allttfalse\fi
\DeclareOption{alltt}{\@alltttrue}
% option to use woolshort package a modification of lshort - JB
\newif\if@woolshort
\expandafter\def\csname test@\jobname\endcsname{test}%
\def\t@st{test}%
\ifx\test@woolshort\t@st\@woolshorttrue\else\@woolshortfalse\fi
\DeclareOption{woolshort}{\@woolshorttrue}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\ExecuteOptions{letterpaper,12pt,oneside,onecolumn,final,openany}
\ProcessOptions% process any options

\LoadClass{amsart}[1996/10/24]% everything is based on the AMS article class
%%%%%%%%%%%%%%%%%--Standard set of packages for Wooster--%%%%%%%%%%%%%%%%%
\RequirePackage[letterpaper,hmargin={1in,1in},includehead,includefoot,top=1.25in,bottom=1.25in]{geometry}% sets the margins for the document
\RequirePackage{ifpdf}% to check if pdfTeX is being used - JB
\RequirePackage{ifxetex}% to check if XeTeX is being used -JB
\RequirePackage{textpos}% to position text on cover - JB
\RequirePackage{amsthm}% to style theorems - JB
\RequirePackage{amssymb}% to obtain special mathematical symbols - JB
\RequirePackage{amsmath}% to obtain special math related commands - JB
\RequirePackage{setspace}% to allow single and double spacing - JB
\ifxetex
	\RequirePackage{fontspec}% allows one to easily set up fonts in the document
	\RequirePackage{xunicode}
	\RequirePackage{xltxtra}% adds extra commands specific to XeTeX
\else % alter class behavior based on version of TeX - JB
	\RequirePackage[pdftex]{graphicx}
\fi
\newdimen\bibindent
\setlength\bibindent{1.5em}
\renewenvironment{thebibliography}[1]
     {\chapter*{\bibname}%
      \@mkboth{\bibname}{\bibname}% removed \MakeUppercase -JB
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\settowidth\labelwidth{\@biblabel{#1}}%
            \leftmargin\labelwidth
            \advance\leftmargin\labelsep
            \@openbib@code
            \usecounter{enumiv}%
            \let\p@enumiv\@empty
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy
      \clubpenalty4000
      \@clubpenalty \clubpenalty
      \widowpenalty4000%
      \sfcode`\.\@m}
     {\def\@noitemerr
       {\@latex@warning{Empty `thebibliography' environment}}%
      \endlist}
\renewcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
\let\@openbib@code\@empty

% Use natbib.sty for the bibliography and make some modifications by cutting code from natbib and altering it- JB

\RequirePackage{natbib}
\bibpunct{[}{]}{;}{a}{,}{,}

\providecommand\bibsection{}
\@ifundefined{chapter}%
  {\renewcommand\bibsection{\section*{\refname
    \@mkboth{{\refname}}{{\refname}}}}}
  {\@ifundefined{NAT@sectionbib}%
    {\renewcommand\bibsection{\chapter*{\bibname
     \@mkboth{{\bibname}}{{\bibname}}}}}
    {\renewcommand\bibsection{\section*{\bibname
     \ifx\@mkboth\@gobbletwo\else\markright{{\bibname}}\fi}}}}
\@ifclassloaded{amsart}%
  {\renewcommand\bibsection{\section*{\refname}}}{}
\@ifclassloaded{amsbook}%
  {\renewcommand\bibsection{\chapter*{\bibname}}}{}
  \@ifclassloaded{woosterthesis}%
  {\renewcommand\bibsection{\chapter*{\bibname\@mkboth{{\bibname}}{{\bibname}}}}}{}
\@ifundefined{bib@heading}{}{\let\bibsection\bib@heading}
\renewenvironment{thebibliography}[1]{\setlength\baselineskip{1\@ptsize pt\@plus5\p@ \@minus3\p@}\setlength\bibsep{\baselinestretch\baselineskip}%%
 \bibsection\addcontentsline{toc}{chapter}{\bibname}%
 \parindent \z@\bibpreamble\bibfont\list
   {\@biblabel{\arabic{NAT@ctr}}}{\@bibsetup{#1}%
    \setcounter{NAT@ctr}{0}}%
    \ifNAT@openbib
      \renewcommand\newblock{\par}
    \else
      \renewcommand\newblock{\hskip .11em \@plus.33em \@minus.07em}%
    \fi
    \sloppy\clubpenalty4000\widowpenalty4000
    \sfcode`\.=1000\relax
    \let\citeN\cite \let\shortcite\cite
    \let\citeasnoun\cite
 }{\def\@noitemerr{%
  \PackageWarning{natbib}
     {Empty `thebibliography' environment}}%
  \endlist\vskip-\lastskip}
\citestyle{wooster}% requires natbib.cfg file
\if@code
\RequirePackage{listings}% for including code
\renewcommand{\lstlistlistingname}{List of Listings}
\fi
\RequirePackage{float}% to handle figures and tables
\RequirePackage{ifthen}% to do conditional checks
	\if@verbatim
		\RequirePackage{verbatim}
	\fi
	\if@dropcaps
		\RequirePackage{lettrine}
	\fi
	\if@alltt
		\RequirePackage{alltt}
	\fi
	\if@woolshort
		\RequirePackage{styles/woolshort}
	\fi
	\if@palatino
		\RequirePackage[T1]{fontenc}
		\RequirePackage{pxfonts}
	\fi
	\if@maple
		\RequirePackage[noplots]{maple2e}
	\fi
	\if@picins
		\RequirePackage{wrapfig}
	\fi
	\RequirePackage{float}% to handle figures and tables - JB
	\RequirePackage[labelfont={bf,footnotesize},font={footnotesize}, justification=raggedright]{caption}% to format captions - JB
	\RequirePackage{subfigure}% to allow multiple images in a figure - JB
	\captionsetup[subfloat]{listofindent=4em}% set captions on subfigures - JB
	\setcounter{lofdepth}{2}% setting depth of the list of figures - JB
\numberwithin{equation}{section}% equations are numbered within sections
\numberwithin{figure}{section}% figures are numbered within sections
\numberwithin{table}{section}% tables are numbered within sections

\newcommand{\woopic}[2]{
  \includegraphics[scale=#2]{#1}
}% Figure command easier to remember than includegraphics. It has two arguments #1= file and %#2=scaling factor
%%%%%%%%%%%%%%%%%--Output Settings--%%%%%%%%%%%%%%%%
\ifxetex
	\if@blacklinks
		\RequirePackage[dvipdfm,%
		pdfusetitle=true,%
		pdfpagemode=UseOutlines,%
		bookmarks,%
		bookmarksopen=true,%
		pdfstartview=FitV,%
		colorlinks,%
		linkcolor=black,%
		citecolor=black,%
		pagebackref=false,%
		plainpages=false,%
		linktocpage=true,%
		pdfpagelabels=true,%
		hyperindex=false,%
		pdfpagetransition=Glitter,%
		breaklinks=true,%
		pagecolor=black,%
		urlcolor=black,%
		pdfstartpage=1]
		{hyperref}
	\else
		\RequirePackage[xetex]{color}
		\definecolor{refcolor}{cmyk}{1,0.98,0,0}    % Color for the reference links
		\definecolor{urlcolor}{cmyk}{0.8,0.32,0.98,0.2}    % Color for the url links
		\definecolor{citecolor}{cmyk}{0.5,1,0,0}    % Color for the citation links
		\RequirePackage[dvipdfm,%
		pdfusetitle=true,%
		pdfpagemode=UseOutlines,%
		bookmarks,%
		bookmarksopen=true,%
		pdfstartview=FitV,%
		colorlinks,%
		linkcolor=refcolor,%
		citecolor=citecolor,%
		\if@backlinks
		pagebackref=true,%
		\fi
		plainpages=false,%
		linktocpage=true,%
		pdfpagelabels=true,%
		hyperindex=true,%
		pdfpagetransition=Glitter,%
		breaklinks=true,%
		pagecolor=black,%
		urlcolor=urlcolor,%
		pdfstartpage=1]
		{hyperref}
	\fi		
\else
	\RequirePackage[verbose,expansion=alltext,stretch=20]{microtype}
	\if@blacklinks			
		\RequirePackage[pdftex,%
		pdfusetitle=true,%
		pdfpagemode=UseOutlines,%
		bookmarks,%
		bookmarksopen=true,%
		pdfstartview=FitV,%
		colorlinks,%
		linkcolor=black,%
		citecolor=black,%
		pagebackref=false,%
		plainpages=false,%
		linktocpage=true,%			
		pdfpagelabels=true,%
		hyperindex=true,%
		pdfpagetransition=Glitter,%
		breaklinks=true,%
		pagecolor=black,%
		urlcolor=black,%
		pdfstartpage=1]	
		{hyperref}
	\else
		\RequirePackage[usenames]{color}
		\definecolor{refcolor}{cmyk}{1, 0.98, 0, 0}    % Color for the reference links
		\definecolor{urlcolor}{cmyk}{0.8 ,0.32, 0.98, 0.2}    % Color for the url links
		\definecolor{citecolor}{cmyk}{0.5, 1, 0, 0}    % Color for the citation links
		\RequirePackage[pdftex,%
		pdfusetitle=true,%
		pdfpagemode=UseOutlines,%
		bookmarks,%
		bookmarksopen=true,%
		pdfstartview=FitV,%
		colorlinks,%
		linkcolor=refcolor,%
		citecolor=citecolor,%
		\if@backlinks
		pagebackref=true,%
		\fi
		plainpages=false,%
		linktocpage=true,%
		pdfpagelabels=true,%
		hyperindex=true,%
		pdfpagetransition=Glitter,%
		breaklinks=true,%
		pagecolor=black,%			
		urlcolor=urlcolor,%
		pdfstartpage=1]
		{hyperref}	
	\fi
\fi
\typeout{*** Warning: The  hyperref package has been loaded. Loading any packages after this could interfere with the hyperref package***}
%\def\ifundefined#1{\expandafter\ifx\csname#1\endcsname\relax}
\DeclareGraphicsExtensions{.pdf, .jpg, .tif}
\setlength\columnsep{16pt}% sets the separation between columns
%\def\publname{Name of the class}% for use in the production of a class proceedings

\def\@PII{ }% need to figure out what this does

%\def\ISSN{This needs to be obtained from http://www.issn.org/en/node/66 for each publication}

%    Blank box placeholder for figures (to avoid requiring any
%    particular graphics capabilities for printing this document).
\newcommand{\blankbox}[2]{%
  \parbox{\columnwidth}{\centering
%    Set fboxsep to 0 so that the actual size of the box will match the
%    given measurements more closely.
    \setlength{\fboxsep}{0pt}%
    \fbox{\raisebox{0pt}[#2]{\hspace{#1}}}%
  }%
}

\def\@maketitle{%
  \normalfont\normalsize
  \let\@makefnmark\relax  \let\@thefnmark\relax
  \ifx\@empty\@date\else \@footnotetext{\@setdate}\fi
  \ifx\@empty\@subjclass\else \@footnotetext{\@setsubjclass}\fi
  \ifx\@empty\@keywords\else \@footnotetext{\@setkeywords}\fi
  \ifx\@empty\thankses\else \@footnotetext{%
    \def\par{\let\par\@par}\@setthanks}\fi
  \@mkboth{\@nx\shortauthors}{\@nx\shorttitle}%
  \global\topskip42\p@ % 5.5 picas to the base of the first title line
  \@settitle
  \ifx\@empty\authors \else \@setauthors \fi
  \ifx\@empty\@commby
  \else
    \baselineskip18\p@
    \vtop{\centering{\footnotesize\@commby\@@par}%
      \global\dimen@i\prevdepth}\prevdepth\dimen@i
  \fi
  \ifx\@empty\@dedicatory
  \else
    \baselineskip18\p@
    \vtop{\centering{\footnotesize\itshape\@dedicatory\@@par}%
      \global\dimen@i\prevdepth}\prevdepth\dimen@i
  \fi
  \@setabstract
  \normalsize
  \dimen@34\p@ \advance\dimen@-\baselineskip
  \vskip\dimen@\relax
} % end \@maketitle

\endinput
