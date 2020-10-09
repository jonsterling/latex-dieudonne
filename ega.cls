\LoadClass[oneside,10pt]{memoir}

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
\RequirePackage[osfI]{garamondx} 
\RequirePackage[varqu,varl]{zi4}
\RequirePackage[garamondx,cmbraces]{newtxmath}

\linespread{1.1}\selectfont
\pretitle{\begin{center}\Huge\bfseries}
\posttitle{\par\end{center}\vskip 0.5em}
\predate{\begin{center}\large}
\postdate{\par\end{center}}


\RenewDocumentCommand\chaptername{}{\normalfont\textsc{chapitre}}
\RenewDocumentCommand\chapnumfont{}{\normalfont}
\RenewDocumentCommand\chapnamefont{}{\centering\LARGE\scshape\MakeLowercase}
\RenewDocumentCommand\chapnumfont{}{\centering\LARGE\scshape}
\RenewDocumentCommand\chaptitlefont{}{\centering\LARGE\bfseries}
\RenewDocumentCommand\printchaptertitle{m}{\chaptitlefont\MakeUppercase{#1}}

\NewDocumentCommand\egasection{}{\S~\thesection.\ \ }
\NewDocumentCommand\egasubsection{}{\thesubsection.\ \ }
\NewDocumentCommand\egasubsubsection{}{\thesubsubsection.\ \ }

\setsecnumdepth{subsubsection}
\setsecnumformat{\csname ega#1\endcsname}
\setsecheadstyle{\centering\normalsize\bfseries\MakeUppercase}
\setsubsecheadstyle{\noindent\normalfont\bfseries}


\appto\mainmatter{%
  \setcounter{secnumdepth}{30}%
}
