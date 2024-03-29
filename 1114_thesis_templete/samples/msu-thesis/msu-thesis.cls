
% MSU Thesis Class
%
% Copyright 2009-2022 by Alan Munn <amunn@msu.edu>
%
% This is a class file for producing dissertations and theses according to the
% Michigan State University Graduate School Guidelines
%
%
% This class may be distributed and/or modified under the
% conditions of the LaTeX Project Public License, either version 1.3
% of this license or any later version.
% The latest version of this license is in
%   http://www.latex-project.org/lppl.txt
% and version 1.3 or later is part of all distributions of LaTeX
% version 2005/12/01 or later.
%
% This package has the LPPL maintenance status `maintained'.
%
% The Current Maintainer of this package is Alan Munn.
%
% This package consists of the following source file:
% 	msu-thesis.cls
% Documentation files:
%   msu-thesis.tex and msu-thesis.pdf;
% A template file:
%   MSU-thesis-template.tex
% A test file and test bibliography:
% 	MSU-thesis-testfile.tex, MSU-thesis-testfile.bib
% It also contains a copy of the LSA Unified Style Sheet for linguistics:
% 	unified.bst
%
% Version 1.0 2010/04/17 Initial release
% Version 1.1 2010/04/20 Require etex package (fix problem with qtree)
% Version 1.2 2010/07/01 Changed TOC depth to include subsubsections
%						 Changed footmarkstyle to make footnote marker correct size
%						 Changed section definitions to correct double spacing
% 						 problem
% Version 1.3 2010/07/02 Fixed subscript size problem within footnotes
%						 Changed TOC to have dotted leaders everywhere
% Version 1.3b 2010/07/02 Now requires at least Memoir v1.618033 [2008/05/27]
% Version 1.4 2010/08/23 Added options for all Masters degrees
% 						 Added option [final] to generate additional titlepage
% 						 and abstract
% 						 Added new command \advisor for advisor name used in
% 						 [final] mode
% 						 Added new environment {msuabstract} for the abstract text
% 						 Added new titling command \makeabstract which produces
% 						 the abstracts
% 						 Fixed first and additional abstract formatting problem
% 						 Added warning about final mode for paper submission only
% 						 in anticipation of electronic submission
% Version 1.4b 2010/12/11 Fixed problems with Appendix formatting in the TOC
% Version 1.5 2010/12/12 Removed code to format the second abstract since this
% 						 is no longer part of the document with electronic
% 						 submission.  Removed \advisor command and [final] option.
% Version 1.5b 2010/12/13 Fixed margins to new specifications; fixed page numbering
%						 issue when dedication was missing.
% Version 1.6 2010/12/16 Bug fixes that introduced another bug. Never released.
% Version 1.7 2010/12/16 Fixed page numbering problems with TOC; Fixed abstract
% 						 spacing problem; fixed LOF, LOT etc. spacing problem;
% 						 by adding command \maketableofcontents; removed
% 						 environment msuabstract and \makeabstract (no longer
% 						 needed) (still available for backwards compatibility).
% 						 Moved samples folder to the doc folder.
% Version 1.8 2010/12/17 Added spacing code for LOF, LOT etc to the
% 						 \mem@tableofcontents code. Removed \maketableofcontents
% 						 command from documentation as it is no longer needed.
% 						 Removed rule between Chapter and Title after irrational
% 						 complaints from MSU's Thesis Office. Fixed page numbering
% 						 problem when Copyright page was missing. Removed varioref
% 						 and afterpage as required packages.
% Version 1.9b 2011/07/22 Made footnotes \normalsize (new requirement)
% Version 2.0 2011/08/24 Added lscape pagestyle for placement of page numbers
%                        on landscape pages.  Implemented as a package option
%                        so that people aren't forced to load lscape or tikz
%                        if they don't need it.  Compatible also with pdflscape
%                        for those using pdflatex; fixed problem with some long
%                        TOC entries
% Version 2.1 2011/09/04 Added code to make the class compatible with hyperref
%                        This is experimental, and mainly useful for drafts.
% Version 2.1b 2012/05/18 Fixed  bug with redefinition of \contentsname
%                         when babel is loaded.
% Version 2.1c 2012/05/18 Generalized babel bugfix to work with polyglossia
% Version 2.1d 2012/05/27 Removed superfluous title redefinition;
%                         Made title in abstract upper case (bug);
%                         Updated documentation; updated degree list
% Version 2.2 2012/06/07 Made changes to case of copyright page and program name
%						 as per user report.  Who knows if the grad school will
%                        change their mind again.  What kind of people care about this?
%                        Name on copyright page is now upper case;
%                        Program name is now as typed.
%                        Chapter titles now single spaced (bug)
%                        lscape option now requires the pdflscape package, since the thesis
%                        office demands that the physical pages be rotated.
% Version 2.3 2012/12/01 Added "Figure" and "Table" to the LOF and LOT entries per new Grad School
%                        requirements.
% Version 2.4 2014/08/04 Changed format of Title Page as per new Grad School requirements.
%						 Field of study and Degree are now sentence case and on the same line
%						 Added \msu@fieldseparator in case they object to an en-dash. Don't they
%                        have better things to do with their time?
%                        To comply with the new MSWord mimicry, all section elements in the TOC
%                        are bold; this can be turned off with the [noboldtoc] option for a
%                        prettier, but possibly non-compliant TOC.
%						 Changed capitalization of 'by' to 'By' which makes things so much better...
% Version 2.5 2014/08/08 Fixed problem with bibliography cover page and appendix formatting
%						 Bibliography cover page is now the page that appears in the TOC
%                        Different TOC format for 1 or >1 appendices
%                        User commands simplified: \appendix = 1 appendix; \appendices = >1
%						 Added three TOC options: boldtoc, plaintoc, mixedtoc replacing noboldtoc
%						 Improved hyperref support for Appendices and Bibliography
% Version 2.5b 2015/04/20 Changed spacing between top of page and titles by .06” to appease the
%						  the Grad School who measure to the tops of letters instead of to baselines.
% Version 2.5c 2015/07/11 Made loading etex conditional due to changes in LaTeX kernel for 2015.
%                         Removed gb4e compatibility code (code remains in the distributed files)
% Version 2.6 2016/05/09  Completely revised the stupid appendix/appendices and bibliography cover page
%                         code using memoir internals instead of hacks.
%                         This should fix numbering issues in the TOC w.r.t the cover pages and
%                         also fix bookmarks in the PDF when hyperref is loaded.
%						  Made default caption delimiter a space so that captions in LOT/LOF look better
%                         Removed old commented out code and older backwards compatibility code.
% Version 2.6b 2016/06/08 Reworked some vertical spacing after complaints from the thesis office
%                         despite the fact that people successfully submitted theses in May with
%                         the previous spacing. This is getting ridiculous.
%                         Also updated documentation to show how to add list of abbreviations
% Version 2.7 2017/06/22  Updated list of degree options; renamed msu@diss to \msu@thesistype  and made
%                         definition a conditional via \ifmsu@dissertation. Fixed problem with placement
%						  of 'to' on title page.  Adjusted landscape page number position and added internal
%                         \msu@lsyshift for possible adjustment of landscape page numbering.  Added boolean
%						  to change pagestyle for \chapter within a landscape environment.
%						  Fixed spacing issue after contents lists and bibliography and unnumbered chapters
%						  Any list of abbreviations \chapter* will need an extra \vspace in the source.
%						  Added support for apacite package which messes with bibname and TOC.
%					      Removed gb4e compatibility code from distribution.
% Version 2.8 2017/12/13  Added {publicabstract} environment and \publicabstractname for the public abstract.
%						  This is an unnumbered and uncounted abstract. It’s not clear whether the title
%                         should be the same as \abstractname. For the moment it is.  Updated documentation to
%						  include section about microtype and contents lists.
%						  Changed \droptitle (again)
%						  Fixed capitalization problem with Appendices
%
% Version 2.9 2020/12/12 Removed super/subscript/footnote restrictions
%						     Added document fontsize options.
%							 Changed use of \baselineskip to \onelineskip so that idiocy of the
%							 thesis office can be accommodated. If complaints about the spacing
%							 of “double space” arise, redefine \onelineskip to be the fontsize rather
%							 than the leading.
%
% Version 2.9a 2020/12/14 Fixed abstract title spacing after complaints about “double space”.
% Version 2.9b 2021/02/26 Fixed epigraph fontsize
% Version 2.9c 2021/05/07 Made \tableofcontents behave like \tableofcontents*
%						  Added warning when public abstract is used.
%						  Minor changes to the documentation
%						  Removed unified.bst from distribution; replaced with apalike in the test file.
% Version 3.0  2021/06/10 Full support for per-chapter appendices and bibliographies.
% 						  Added global chapter counter for proper hyperrefs to appendices
%						  Added a formatting hook for appendix numbering. We'll see how this works in practice.
%						  Added spacing hooks for bibliographies to make users' lives a little easier
% Version 3.0b 2021/07/14 Added msu@hchap counter for hyperref targets in appendices (unreleased)
% Version 3.1  2022/03/03 Added support for List of Algorithms plus fixes for algorithm2e and algorithmicx etc
% Version 3.1b 2022/03/25 Fixed numbering problem for single global appendix
% Version 3.2 2022/04/16  Fixed TOC formatting problem for per-chapter appendices
% Version 3.3 2022/04/18 New option bibassection to allow for thesis office inconsistencies.
%						 Also adjusted chapter title code so that Appendix chapters can have
%						 the extra blank line that the thesis office wants. More inconsistencies.
% Version 3.3b 2022/06/24 Fixed secnumdepth problem when appendices are used;
%						  Fixed numbering issue of subsequent chapters;
%						  made TOC leaders all identical.
% Version 3.4 2022/06/30  Added a starred version of \makecopyrightpage;
%						  removed colons from captions;
%						  updated documentation on algorithms and captions
% Version 3.5 2022/08/15  Added \setabstractnamespace to allow user control over thesis office idiocy
% Version 3.5b 2022/08/19 Changed default for \setabstractnamespace
%
% Report bugs/problems/questions to <amunn@msu.edu>
%
\def\msu@version{3.5b}
\def\msu@date{2022/08/19}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{msu-thesis}[\msu@date\space  Korea University Thesis Class version \msu@version]
\newif\ifmsu@dissertation\msu@dissertationtrue % added v2.7 boolean for \msu@thesistype
\newif\ifmsu@chapterbib\msu@chapterbibfalse % added v3.0
\def\msu@bibtype{BIB}
\newif\ifmsu@chapterapp\msu@chapterappfalse % added v3.0
\def\msu@apptype{APP}
\newif\ifmsu@singleappendix\msu@singleappendixfalse % added v3.1b
\newcommand*\msuappendixnumformat{\Alph{chapter}}% Appendices are Alpha numbered
\newif\ifmsu@lscape\msu@lscapefalse
\newif\ifmsu@stupidtoc\msu@stupidtocfalse
\newif\ifmsu@mixedtoc\msu@mixedtocfalse
\newif\ifmsu@plaintoc\msu@plaintoctrue % make this the default to see what the reaction is
\newif\ifmsu@colonintoc\msu@colonintocfalse
\newif\ifmsu@hyperloaded\msu@hyperloadedfalse
\DeclareOption{PhD}{\gdef\msu@degree{Doctor of Philosophy}}
\DeclareOption{DEd}{\gdef\msu@degree{Doctor of Education}}
\DeclareOption{DMA}{\gdef\msu@degree{Doctor of Musical Arts}}
\DeclareOption{DNP}{\gdef\msu@degree{Doctor of Nursing Practice}}
\DeclareOption{MA}{\gdef\msu@degree{Master of Arts}\global\msu@dissertationfalse}
\DeclareOption{MS}{\gdef\msu@degree{Master of Science}\global\msu@dissertationfalse}
\DeclareOption{MAT}{\gdef\msu@degree{Master of Arts for Teachers}\global\msu@dissertationfalse}
\DeclareOption{MBA}{\gdef\msu@degree{Master of Business Administration}\global\msu@dissertationfalse}
\DeclareOption{MFA}{\gdef\msu@degree{Master of Fine Arts}\global\msu@dissertationfalse}
\DeclareOption{MIPS}{\gdef\msu@degree{Master of International Planning Studies}\global\msu@dissertationfalse}
\DeclareOption{MHRL}{\gdef\msu@degree{Master of Human Resources and Labor Relations}\global\msu@dissertationfalse}
\DeclareOption{MMus}{\gdef\msu@degree{Master of Music}\global\msu@dissertationfalse}
%\DeclareOption{MSN}{\gdef\msu@degree{Master of Science in Nursing}\global\msu@dissertationfalse}
\DeclareOption{MPH}{\gdef\msu@degree{Master of Public Health}\global\msu@dissertationfalse}
\DeclareOption{MPP}{\gdef\msu@degree{Master of Public Policy}\global\msu@dissertationfalse}
\DeclareOption{MSW}{\gdef\msu@degree{Master of Social Work}\global\msu@dissertationfalse}
\DeclareOption{MURP}{\gdef\msu@degree{Master in Urban and Regional Planning}\global\msu@dissertationfalse}
\DeclareOption{lscape}{%
\msu@lscapetrue
\AtEndDocument{\ClassWarningNoLine{msu-thesis}{You have chosen the [lscape] option. You may need to run latex twice to get landscape page numbering to display correctly}}}
\DeclareOption{boldtoc}{\msu@stupidtoctrue\msu@plaintocfalse\msu@mixedtocfalse}
\DeclareOption{plaintoc}{\msu@plaintoctrue\msu@stupidtocfalse\msu@mixedtocfalse}
\DeclareOption{mixedtoc}{\msu@mixedtoctrue\msu@stupidtocfalse\msu@plaintocfalse}
\DeclareOption{chapterbib}{\global\msu@chapterbibtrue\def\msu@bibtype{CHAPBIB}} % per-chapter bibliographies added v3.0
\newcommand*\msu@bibsection{chapter} % per-chapter bibliographies like chapters in TOC
\DeclareOption{bibassection}{\def\msu@bibsection{section}} % per-chapter bibs as sections in TOC
\DeclareOption{chapterapp}{
    \global\msu@chapterapptrue
	\def\msu@apptype{CHAPAPP}
	% per-chapter appendices added v3.0
	\renewcommand\msuappendixnumformat{\the@ppsavesec\Alph{chapter}} % Appendix numbers per-chapter (now permitted)
}
\DeclareOption{12pt}{\def\msu@sizeoption{12pt}} % added v2.9
\DeclareOption{11pt}{\def\msu@sizeoption{11pt}}
\DeclareOption{10pt}{\def\msu@sizeoption{10pt}}
\ExecuteOptions{PhD,12pt}
\DeclareOption*{
\PassOptionsToClass{\CurrentOption}{memoir}
}
\ProcessOptions\relax
\LoadClass[\msu@sizeoption,oneside,letterpaper]{memoir}[2008/05/27]
% Check for older versions of the latex kernel
\ifx\e@alloc\@undefined
   \RequirePackage{etex}
\fi
\RequirePackage{etoolbox}
% set up landscape page numbering
% make a boolean for selecting pagestyle properly if \chapter appears in a landscape environment
\newif\ifmsu@lscapemode\msu@lscapemodefalse
\ifmsu@lscape
  \RequirePackage{pdflscape} % this will cause physical pages to be rotated in the PDF
  \AtBeginEnvironment{landscape}{\msu@lscapemodetrue} % to get chapter pagestyle correct
  \RequirePackage{tikz}
% adjust \msu@landscapeyshift to meet the thesis office requirements
% positive values will move the number closer to the bottom of the table
% 0 satisfied them for a few years and then they complained.
  \newcommand*{\msu@landscapesyshift}{3.25} % changed 5/3/2017
  \tikzset{msu landscape pagenum/.style={outer sep=1cm,above,rotate=90,yshift=\msu@landscapesyshift}}
  \makepagestyle{lscape}
  \makeevenfoot{lscape}{}{\tikz[remember picture,overlay]
      \node[msu landscape pagenum] at (current page.east)
      {\thepage};}{}
  \makeoddfoot{lscape}{}{\tikz[remember picture,overlay]
      \node[msu landscape pagenum] at (current page.east)
      {\thepage};}{}
\fi

% set up page for MSU Thesis guidelines
\settypeblocksize{9in}{6.5in}{*}
\setlrmargins{1in}{*}{*}
\setulmargins{1in}{*}{*}
\setheadfoot{.5in}{.5in} % changed 5/3/2017

% set up contents title
% we use a private macro here to avoid problems with babel and
% polyglossia if they are loaded since they redefine the contents title
%
\newcommand*{\msu@contentsname}{TABLE OF CONTENTS}
\newcommand*{\fieldofstudy}[1]{\gdef\msu@fieldofstudy{#1}} % removed \MakeUppercase 6/5/12
\newcommand{\dedication}[1]{\gdef\msu@dedication{#1}}
\newcommand*{\msu@titleintro}{A~} % this is the beginning to the title page phrase
\newcommand*{\msu@fieldseparator}{\textendash} % this is between the degree name and field of study

\newcounter{msu@hchap} % global counter for chapters used by hyperref
% This may also be solved by using \hypersetup{hypertexnames=false}
% hard to tell whether this is a better solution.


% make title 2in from top of page
% This value is crazy because the grad school doesn’t know how to measure
\setlength{\droptitle}{.25in} % changed again due to topskip removal 12/13/17

% set up the title page
% Because the title is set to \MakeUppercase we need to \protect line
% breaks within the title.  This has now been documented in the user docs.
% Using \onelineskip here instead of \baselineskip because thesis office doesn't know how to measure
\newcommand*\msu@thesistype{\ifmsu@dissertation{DISSERTATION}\else{THESIS}\fi}
\pretitle{\begin{center}\MakeUppercase}
\posttitle{\\[\onelineskip]\end{center}}
\preauthor{\begin{center}By\\[\onelineskip]}
\postauthor{\end{center}}
\predate{\vfill\begin{center}\msu@titleintro\msu@thesistype\\[\onelineskip]Submitted to\\Korea University\\in partial fulfillment of the requirements\\for the degree of\\[\onelineskip]\msu@fieldofstudy~\msu@fieldseparator~\msu@degree\\[\onelineskip]}

% set up the chapter titles
\chapterstyle{thatcher}
\setlength{\beforechapskip}{-1sp}% changed 2020/12/17 Need negative value to suppress indentation
\setlength{\afterchapskip}{2\onelineskip} % changed 2017/05/03 because of thesis office complaints
\renewcommand*{\chapnamefont}{\centering\bfseries}
\renewcommand*{\chapnumfont}{\bfseries}
\renewcommand*{\chaptitlefont}{\SingleSpacing\bfseries}
\renewcommand*{\printchapternonum}{} % modified 3/5/2017
% added 18/4/2022 to allow stupid extra space for appendix chapter title
\setlength{\midchapskip}{0pt}
\renewcommand*{\afterchapternum}{\par\nobreak\vskip\midchapskip}
\renewcommand*{\printchaptername}{%
    \centerline{\chapnumfont{\MakeUppercase\@chapapp\ \ifmsu@singleappendix\else\thechapter\fi}}}% added v3.1b
\renewcommand{\partnamefont}{\centering\bfseries}
\renewcommand{\partnumfont}{\bfseries}
\renewcommand{\parttitlefont}{\SingleSpacing\bfseries}
\renewcommand{\printpartname}{\partnamefont{\MakeUppercase{\partname}}}
\renewcommand{\printparttitle}[1]{\parttitlefont \MakeUppercase#1}
% Set epigraph fonts to \normalsize
\renewcommand{\epigraphsize}{\normalsize} % added 2/26/21


% set up the section styles
\setbeforesecskip{-1sp}
\setsecheadstyle{\normalfont\SingleSpacing\large\bfseries}
\setsubsecheadstyle{\normalfont\SingleSpacing\bfseries}
\setsubsubsecheadstyle{\normalfont\SingleSpacing\bfseries}

% set up TOC

\maxtocdepth{subsubsection}
\setsecnumdepth{subsubsection}
\renewcommand*{\printtoctitle}[1]{\centering\bfseries\msu@contentsname}
\renewcommand*{\cftchaptername}{Chapter\space}
\renewcommand*{\cftappendixname}{Appendix\space}
\renewcommand*{\cftchapterdotsep}{\cftdotsep}
\renewcommand*{\cftfigureaftersnum}{\msucaptiondelim} % This uses the same delimiter as in the captions
\renewcommand*{\cfttableaftersnum}{\msucaptiondelim}  % per thesis office punctuation idiocy
\renewcommand*{\cftfigurename}{Figure\space}
\renewcommand*{\cfttablename}{Table\space}
%\setlength{\cftbeforetableskip}{0pt}
%\setlength{\cftbeforefigureskip}{0pt}
\renewcommand{\insertchapterspace}{}
\setrmarg{3.55em plus1fil} % ragged right titles added 6/15/17



% Stupid option to make the TOC all bold
\ifmsu@stupidtoc
	\def\msu@tocfont{\bfseries}
	\def\msu@chapfont{\bfseries}
\fi
\ifmsu@plaintoc
	\def\msu@tocfont{\normalfont}
	\def\msu@chapfont{\normalfont}
\fi
\ifmsu@mixedtoc
	\def\msu@tocfont{\normalfont}
	\def\msu@chapfont{\bfseries}
\fi
% In all cases make the leaders identical to section leaders
% Thesis office sometimes complains about the fact that chapter leaders
% are larger because they define “consistency” as what Word does
% Added 6/24/2022
\let\cftchapterleader\cftsectionleader

% Support for algorithm packages added v3.1
% If using the algorithm2e package, you must load it with the algo2e package option
% If you are using algorithmicx or its related versions you should not load
% the algorithm package, but instead load the float package and then style
% your algorithms accordingly using \floatstyle
% Importantly you MUST load float after defining any new lists since it clobbers
% the memoir float methods


\newlistof{listofalgorithms}{loa}{List of Algorithms}
\newfloat[chapter]{algorithm}{loa}{Algorithm}
\newlistentry{algorithm}{loa}{0}
\renewcommand*{\cftalgorithmname}{Algorithm\space}
\renewcommand*{\cftalgorithmaftersnum}{\msucaptiondelim}
%
% This code technique from http://tex.stackexchange.com/q/232121/
% Makes appendices formatted as sections not chapters in the TOC
% This is due to MSU idiocy, and also will make the appendix name
% upper case (because of MSU case matching requirements in TOC/chap)
% So the appendices are chapters in the document but formatted as
% sections in the TOC.  Code needs to be changed back for subsequent chapters.
% This also accounts for the bizarre formatting of per-chapter appendices and
% bibliographies which look like chapters except for the spacing in the TOC
%
% This allows for a uniform user interface for both end of document
% and per chapter appendices.

% This code leaves the spacing alone
\cftinsertcode{APP}{
  \renewcommand\cftsectionfont{\msu@tocfont} % fixed 12/13/17
  \renewcommand\cftchapterpagefont{\msu@tocfont}
%  \renewcommand*{\cftappendixname}{APPENDIX\space}
}
% This code removes the before chapter spaces for in-chapter apps
\cftinsertcode{CHAPAPP}{
  \setlength\cftbeforechapterskip{0pt}
  \renewcommand\cftsectionfont{\msu@tocfont} % fixed 12/13/17
  \renewcommand\cftchapterpagefont{\msu@tocfont}
  \renewcommand*{\cftappendixname}{APPENDIX\space}
}

% This code adds extra space in the TOC margin for the APPENDIX name, and
% makes the appendices formatted like sections even though they are
% chapters in the source

\newlength\apptoclen
\settowidth{\apptoclen}{APPENDIX M}
\cftinsertcode{APPENDICES}{
  \setlength\cftchapterindent{\cftsectionindent}
  \setlength\cftsectionnumwidth{\apptoclen} % add the extra space
  \setlength\cftbeforechapterskip{0pt}
  \renewcommand\cftsectionfont{\msu@tocfont} % fixed 12/13/17
  \renewcommand\cftchapterpagefont{\msu@tocfont}
  \renewcommand*{\cftappendixname}{APPENDIX\space}
}

% This code resets the TOC back to normal section spacing if appendices have been used

\cftinsertcode{CHAPAPPR}{
\cftsetindents{section}{1.5em}{2.3em}
\setlength{\cftchapterindent}{0em}
\setlength{\cftchapternumwidth}{3em} % added 6/24/2022
\setlength{\cftbeforechapterskip}{1.0em \@plus\p@}
  \renewcommand\cftchapterfont{\msu@chapfont}
  \renewcommand\cftchapterpagefont{\msu@chapfont}
  \settocdepth{subsubsection} % added 6/24/2022
}
% This code resets the changes made in the APP code back to normal
% so that the bibliography will appear correctly in the TOC
\cftinsertcode{BIB}{
\setlength{\cftchapterindent}{0em}
\setlength{\cftbeforechapterskip}{1.0em \@plus\p@}
  \renewcommand\cftchapterfont{\msu@chapfont}
  \renewcommand\cftchapterpagefont{\msu@chapfont}
}

\cftinsertcode{CHAPBIB}{
  \setlength\cftchapterindent{0em}
  \setlength\cftbeforechapterskip{0pt}
  \renewcommand\cftsectionfont{\msu@tocfont} % fixed 12/13/17
  \renewcommand\cftchapterpagefont{\msu@tocfont}
}


% Set up all the font styles for the TOC
\renewcommand*{\cftchapterfont}{\msu@chapfont}
\renewcommand*{\cftchapterpagefont}{\msu@chapfont}
\renewcommand*{\cftsectionfont}{\msu@tocfont}
\renewcommand*{\cftsubsectionfont}{\msu@tocfont}
\renewcommand*{\cftsubsubsectionfont}{\msu@tocfont}
\renewcommand*{\cftsectionpagefont}{\msu@tocfont}
\renewcommand*{\cftsubsectionpagefont}{\msu@tocfont}
\renewcommand*{\cftsubsubsectionpagefont}{\msu@tocfont}


\renewcommand*{\l@chapter}[2]{%
  \renewcommand{\cftchapterpagefont}{\msu@chapfont}
  \l@chapapp{\MakeUppercase{#1}}{#2}{\cftchaptername}} % Format chapter names
\renewcommand*{\l@appendix}[2]{%
 \renewcommand{\cftchapterpagefont}{\msu@tocfont}
  \setlength{\cftchapternumwidth}{2em}
  \l@chapapp{\msu@tocfont\MakeUppercase{#1}}{#2}{\cftappendixname}} % Format appendix names
\setlength{\cftchapternumwidth}{3em}
\setrmarg{3.5em} % better wrapping of long titles

% Added to make sure that chapters within landscape mode have correct pagestyle
\renewcommand\chapter{%
  \refstepcounter{msu@hchap}
  \ifartopt\par\@nameuse{chapterblock}\else
	\clearforchapter
     \ifmsu@lscapemode
     	\thispagestyle{lscape}
     \else
		\thispagestyle{chapter}
	 \fi
    \global\@topnum\z@
  \fi
  \m@mindentafterchapter
  \@ifstar{\@m@mschapter}{\@m@mchapter}}

% MSU requires double spacing between entries in the list of tables, figures etc.
% so we add the commands  to change the 'list of'
% spacing after the ToC is formatted.

\let\oldmem@tableofcontents\mem@tableofcontents
\renewcommand\mem@tableofcontents[1]{%
   \oldmem@tableofcontents{#1}%
   \setlength{\cftbeforechapterskip}{0.0em \@plus\p@}
	\setlength{\cftparskip}{\onelineskip}
	\pagestyle{plain}
}
% This allows users to use either \tableofcontents or \tableofcontents* with the same effect
% Code from https://tex.stackexchange.com/a/165968/2693
% Allows users to not read the docs
\renewcommand{\tableofcontents}{%
  \@ifstar{\mem@tableofcontents{01}}
          {\mem@tableofcontents{01}}%
}

% set up footnotes
% Most of this removed v2.9
%\footmarkstyle{\normalsize\textsuperscript{#1}} % reset size so that mark is right size
%\setlength{\footmarkwidth}{1.8em}
%\setlength{\footmarksep}{-1.8em}
%\setlength{\footparindent}{1em}
%\renewcommand{\foottextfont}{\normalsize} % footnotes will be 12pt
\feetbelowfloat % footnotes will appear below bottom floats

% set up abstract and public abstract
% The thesis office is inconsistent in how they measure what they call a "double space".
% Adding a fudge factor that can be changed at the user level (v3.5 8/15/2022)
% We'll set it to 0 for the moment; 0 is what should be 1 double space, 
% but depending on their mood and and whether Mars is in conjunction with Jupiter they seem to want more
% or less. Nothing better than random application of useless rules to waste everyone’s time.
\newcommand\setabstractnamespace[1]{\gdef\msu@abstractnamespacefactor{#1}}
\setabstractnamespace{0} % this may be too big
\renewenvironment{abstract}{%
   \setlength{\afterchapskip}{\onelineskip} % changed 2020/12/14 again removed manual spacing from 2016
   \chapter*{\abstractname}
   \thispagestyle{empty}
%   \plainbreak{-.5} % changed 2016/06/08 after complaints
    \begin{center}
    	\MakeUppercase{\thetitle}\plainbreak{1}By\plainbreak{1}\theauthor
 	\end{center}
	\plainbreak{\msu@abstractnamespacefactor} % changed 2016/06/08 after complaints
    \DoubleSpacing
   }{\par}
%
% Public abstract is both unnumbered and uncounted (weird)
% Added 6/24/2017 Nobody has asked yet for this yet, but
% we’ll add this to the next release.
%
% this just stores the current page number and replaces it at the end

\newcounter{msu@pubabspages}
\newcommand{\publicabstractname}{\abstractname}
\newenvironment{publicabstract}{%
   \phantomsection% added 6/30/2022 to remove spurious warning
   \ClassWarningNoLine{msu-thesis}{You have provided a public abstract. Please make sure you ALSO have a regular abstract!}
   \setcounter{msu@pubabspages}{\value{page}}
   \setlength{\afterchapskip}{\onelineskip} % changed 2020/12/14 again removed manual spacing from 2016
   \chapter*{\publicabstractname}
   \thispagestyle{empty}
%   \plainbreak{-.5} % changed 2016/06/08 after complaints
    \begin{center}
    	\MakeUppercase{\thetitle}\plainbreak{1}By\plainbreak{1}\theauthor
 	\end{center}
%	\plainbreak{-.5} % changed 2016/06/08 after complaints
    \plainbreak{\msu@abstractnamespacefactor} % changed 2016/06/08 after complaints
    \DoubleSpacing
   }{\clearpage\setcounter{page}{\value{msu@pubabspages}}}


% set up captions
\captionstyle[\centering]{\raggedright}
% Make the caption delimiter a space instead of colon space so that the
% contents lists don't look so stupid.  Can be changed if necessary.
\newcommand*\msucaptiondelim{\space}
\captiondelim{\msucaptiondelim}

\pagestyle{plain}

% make the titlepage
\newcommand{\maketitlepage}{%
	\pagestyle{empty}
	\thispagestyle{empty}
	\begin{titlingpage}
		\maketitle
	\end{titlingpage}
	\addtocounter{page}{1}}

% make the copyright page
% added * version because a new grad school minion has decided to interpret the formatting guide
% as requiring left aligned copyright mark, even though the guide says it can be
% anywhere on the page as long as the text itself is left aligned.
% * version will make things left aligned. Added v3.4 6/20/2022
\newcommand*{\makecopyrightpage}{%
	\@ifstar{\def\msu@copyrightalign{}}{\def\msu@copyrightalign{\raggedleft}}
	\pagestyle{plain}
	\clearpage
	\thispagestyle{empty}
	\vspace*{7in}
	{\noindent\msu@copyrightalign Copyright by\\\MakeUppercase{\theauthor}\\\thedate\\}% Author now uppercase 6/5/12
	\clearpage}

% make the dedication page
% changed 2016/06/08 for vertical centering
% reverted back 2016/06/17
\newcommand*{\makededicationpage}{%
	\clearpage
	\pagestyle{plain}
	\@setuppart
	{\centering
	\normalfont
	\interlinepenalty \@M
	\par\msu@dedication\par
	}\@endpart}

\renewcommand{\mainmatter}{%
  \DoubleSpacing\pagestyle{plain}\@ifstar{\@smemmain}{\@memmain}}

\renewcommand{\beforepartskip}{\null\vfill}
\renewcommand{\afterpartskip}{\null\vfill\newpage}


% This code patches the memoir appendix code to automatically add
% appendix cover pages with the correct label, and getting the stupid
% TOC format that the Grad School requires correct.
% Also, since the Grad School doesn't allow a single appendix to have a letter name
% we remove it for the title, but not for the section headings.
% Redefining \@apppage as well to get the spacing right 2016/06/08
% Modified 2021/06/10 to deal with both in-chapter and end of document appendices
%
\newcommand{\msu@apppage}{%
  \@setuppart
  \cftinserthook{toc}{\msu@apptype} % extra space or not added 2021/06/10
  \mempreaddapppagetotochook
  \addappheadtotoc
  \mempostaddapppagetotochook
  \partmark{\appendixpagename}%
  \memapppageinfo{\appendixpagename}%
  \cftinserthook{toc}{APPENDICES} % reset for subappendices added 2021/06/10
  {\centering
   \interlinepenalty \@M
   \normalfont
   \printparttitle{\appendixpagename}\par}%
  \@endpart}

%
% Code for appendix/appendices
% Because the thesis office wants chapter appendices to look like chapters
% we make the same code work for per-chapter or global appendices
%
% Instead of using \appendix we create an {appendix} environment for a single
% appendix. This allows the same code to be used for both global and per chapter
% appendices.
%
\renewenvironment{appendix}%
  {\renewcommand{\appendixname}{Appendix}
   \renewcommand{\appendixtocname}{Appendix}
   \renewcommand{\appendixpagename}{Appendix}
% It's not clear if this should apply to per-chapter appendices also
% I think it probably should, even though it leads to ambiguity.
% Changing this in 3.2 2022/04/16
%   \ifmsu@chapterapp\else
   \msu@singleappendixtrue
% \fi% make sure single appendix doesn't have a number if global 3.1b (always 3.2)
   \msu@apppage\settocdepth{part}\@resets@pp\anappendixtrue}%
  {\@ppsaveapp\@pprestoresec\anappendixfalse\cftinserthook{toc}{CHAPAPPR}} % reset aded 2022/04/16

\renewenvironment{appendices}%
  {\msu@apppage\settocdepth{chapter}
   \@resets@pp\anappendixtrue}%
  {\@ppsaveapp\@pprestoresec\anappendixfalse\cftinserthook{toc}{CHAPAPPR}} % reset added 2022/04/16

% The default numbering that memoir assumes is for appendices
% is sequential throughout the document; the thesis office
% requires them to restart from A every chapter. In case they
% ever allow a saner numbering system we provide the \msuappendixnumberformat hook
% for modifying the numbering scheme if allowed.
%

\renewcommand{\@resets@pp}{%
  \par
  \@ppsavesec
  \setcounter{section}{0}%
  \setcounter{chapter}{0}%
  \renewcommand\@chapapp{\appendixname}%
  \renewcommand\thechapter{\msuappendixnumformat}%
%  \restoreapp % removed 6/24/2022
  }


% Don't save the appendix counters even for per-chapter appendices

%\let\restoreapp\relax % removed 6/24/2022


% make the bibliography page
% new version modelled after memoir code for appendix page
% removed extraneous \vfils
\newcommand\msu@bibpage{%
  \let\bibtocname\bibname % moved inside this page to beat apacite
  \let\bibpagename\bibname
  \cftinserthook{toc}{\msu@bibtype}
  \settocdepth{subsubsection} % changed v2.7 to allow for chapter bibs
  \@setuppart
  \msu@preaddbibpagetotochook
  \msu@addbibheadtotoc
  \msu@postaddbibpagetotochook
  \partmark{\bibpagename}%
  \msu@bibpageinfo{\bibpagename}%
  {\centering
   \interlinepenalty \@M
   \normalfont
   \printparttitle{\bibpagename}\par}%
  \@endpart
   \cftinserthook{toc}{BIB}}

\newcommand\msu@preaddbibpagetotochook{}
\newcommand\msu@postaddbibpagetotochook{}
\newcommand{\msu@bibpageinfo}[1]{}
\renewcommand{\prebibhook}{\vspace{\cftparskip}} % add extra space before entries to match ToC etc. 6/15/17

% modified 4/18/2022 to allow for per-chapter bibliographies to appear either
% as chapters or as sections in the bibliography. Thesis office isn't consistent in this.
\newcommand\msu@addbibheadtotoc{%
    \ifmsu@chapterbib
        \phantomsection\addcontentsline{toc}{\msu@bibsection}{\bibtocname}
    \else
    	\phantomsection\addcontentsline{toc}{chapter}{\bibtocname}
	\fi
	}
% Since the bibliography page is the TOC entry we remove the bib in the TOC
% when it's introduced
\nobibintoc
% Modified 8/7/14 to add the bibliography cover page to the TOC and not the actual bibliography page
% This should also work for biblatex even though memoir doesn't check for it

\newcommand*{\makebibliographypage}{\msu@bibpage}
%\let\makebibliographycover\makebibliographypage No longer needed for compatibility

% Informational warnings
%
\AtEndDocument{%
\ifmsu@dissertation\else\ClassWarningNoLine{msu-thesis}{Masters theses MUST have chapters to be formatted correctly!}\fi
}
% Do some stuff at begin document:
\AtBeginDocument{%
% Moved to AtBeginDocument to override apacite
\@ifpackageloaded{apacite}{\@tocbibfalse}{} % added 6/22/17
\@ifpackageloaded{algorithm2e}{\let\@chapter=\algocf@original@chapter}{}% undoes algorithm2e redefinition of chapter added v3.1
% Make bibliography spacing more automatic for biblatex and natbib users 2021/06/10
% This should cover most cases. Otherwise just set single spacing
\@ifpackageloaded{biblatex}
	{\renewcommand{\bibsetup}{\SingleSpacing\setlength{\bibitemsep}{\baselineskip}}} % biblatex
	{\@ifpackageloaded{natbib}
		{\AtBeginEnvironment{thebibliography}{\SingleSpacing\setlength{\bibsep}{\baselineskip}}} % natbib
		{\AtBeginEnvironment{thebibliography}{\SingleSpacing}}} % any other bib package
%\topskip=0pt % setting this because the Grad School doesn’t know how to measure -changed back 6/15/17
\checkandfixthelayout
%
% set up subscript sizes so that 10 pt is the smallest
% (MSU Requirement)
% Removed v2.9
%\DeclareMathSizes{12}{12}{10}{10}
%\DeclareMathSizes{10.95}{10.95}{10}{10}
%\DeclareMathSizes{10}{10}{10}{10}
%
% check for hyperref
% The hyperref code allows hyperref to be used. It is not guaranteed to
% work and has been lightly tested.
% Thanks to Florent Chervet for the code.
% Added hypersetup to remove borders around links 5/9/16
\@ifpackageloaded{hyperref}%
{\hypersetup{pdfborder= 0 0 0}
\msu@hyperloadedtrue
	\def\MakeLinkUppercase \hyper@linkstart #1#2#3\hyper@linkend
          {\hyper@linkstart {#1}{#2}{\MakeUppercase{#3}}\hyper@linkend }
\pdfstringdefDisableCommands{\let\MakeUppercase \@firstofone }
\renewcommand*{\l@chapter}[2]{%
   \l@chapapp{\MakeLinkUppercase #1}{#2}{\cftchaptername}} % Format chapter names
\renewcommand*{\l@appendix}[2]{%
  \l@chapapp{\MakeLinkUppercase #1}{#2}{\cftappendixname}} % Format appendix names (changed 13/12/17)
\apptocmd{\@resets@pp}{\gdef\theHchapter{\arabic{msu@hchap}}}{}{} % get hypertargets in appendices right (added v3.0; fixed v3.0b)
}
  % if no hyperref
{\relax}
}
\endinput
