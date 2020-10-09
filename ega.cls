\LoadClass[oneside,10pt]{memoir}

\ExplSyntaxOn

\RequirePackage{microtype}
\RequirePackage{etoolbox}

%% Patching messed up memoir
\renewcommand\AtEndPackage[2]{\def\temp{\AddToHook{package/after/#1}{#2}}\temp}

\RequirePackage{amsmath}
\RequirePackage{hyperref}
\RequirePackage[capitalize]{cleveref}

\AtEndPreamble{
  \setlrmarginsandblock{1.33in}{*}{1}
  \setulmarginsandblock{1.4in}{*}{1}
  \setheaderspaces{*}{2\onelineskip}{*}
  \checkandfixthelayout
}


\setlength\cftsectionindent{10pt}
\setlength\cftsubsectionindent{10pt}
\setlength\cftsectionnumwidth{2em}
\setlength\cftsubsectionnumwidth{2em}

\RequirePackage{amsthm}
\RequirePackage[full]{textcomp}
\RequirePackage{frenchmath}
\RequirePackage[varqu,varl]{zi4}
\RequirePackage[osfI]{garamondx}
\RequirePackage[garamondx,scaled=.98]{newtxmath}


\linespread{1.1}\selectfont
\pretitle{\begin{center}\Huge\bfseries}
\posttitle{\par\end{center}\vskip 0.5em}
\predate{\begin{center}\large}
\postdate{\par\end{center}}


\RenewDocumentCommand\chaptername{}{\normalfont\textsc{chapter}}
\RenewDocumentCommand\chapnumfont{}{\normalfont}
\RenewDocumentCommand\chapnamefont{}{\centering\LARGE\scshape\MakeLowercase}
\RenewDocumentCommand\chapnumfont{}{\centering\LARGE\scshape}
\RenewDocumentCommand\chaptitlefont{}{\centering\LARGE\bfseries}
\RenewDocumentCommand\printchaptertitle{m}{\chaptitlefont\MakeUppercase{#1}}

\NewDocumentCommand\ega_thesection{}{\S~\thesection.~}
\NewDocumentCommand\ega_thesubsection{}{\thesubsection.~}
\NewDocumentCommand\ega_thesubsubsection{}{\thesubsubsection.~}


\setsecnumdepth{subsubsection}
\setsecnumformat{\csname ega_the#1\endcsname}
\setsecheadstyle{\centering\normalsize\bfseries\MakeUppercase}
\setsubsecheadstyle{\noindent\normalfont\bfseries}


\appto\mainmatter{
  \setcounter{secnumdepth}{30}
}


\cs_new:Npn \__ega_append_period:c #1 {
  \cs_if_exist:cTF {#1} {
    \cs_set_eq:cc {ega_old_ #1} {#1}
    \cs_set:cpn {#1} ##1 {
      \use:c {ega_old_ #1} [##1]{##1.}
    }
  }{}
}


\__ega_append_period:c {subsection}
\__ega_append_period:c {subsubsection}
\__ega_append_period:c {paragraph}
\__ega_append_period:c {subparagraph}
 
\ExplSyntaxOff
 
