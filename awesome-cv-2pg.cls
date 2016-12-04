%% Start of file `awesome-cv.cls'.
% Awesome CV Class File
%
% This class has been downloaded from:
% https://github.com/posquit0/Awesome-CV
%
% Author:
% Claud D. Park <posquit0.bj@gmail.com>
% http://www.posquit0.com
%
% Notes:
% 1) This class file defines the structure and layout of the template file (cv.tex, resume.tex).
% 2) It has been written in such a way that under most circumstances you 
% should not need to edit it.
%
% Class license:
% LPPL v1.3c (http://www.latex-project.org/lppl)
%


%-------------------------------------------------------------------------------
%                Identification
%-------------------------------------------------------------------------------
\ProvidesClass{awesome-cv-2pg}
\NeedsTeXFormat{LaTeX2e}


%-------------------------------------------------------------------------------
%                Class options
%
% (need to be done before the external package loading, for example because
% we need \paperwidth, \paperheight and \@ptsize to be defined before loading
% geometry and fancyhdr)
%-------------------------------------------------------------------------------
% Options for draft or final
\DeclareOption{draft}{\setlength\overfullrule{5pt}}
\DeclareOption{final}{\setlength\overfullrule{0pt}}
% Inherit options of article
\DeclareOption*{%
  \PassOptionsToClass{\CurrentOption}{article}
}
\ProcessOptions\relax
\LoadClass{article}


%-------------------------------------------------------------------------------
%                3rd party packages
%-------------------------------------------------------------------------------
% Needed to make fixed length table
\RequirePackage{array}
% Needed to handle list environment
\RequirePackage{enumitem}
% Needed to handle text alignment
\RequirePackage{ragged2e}
% Needed to configure page layout
\RequirePackage{geometry}
% Needed to make header & footer effeciently
\RequirePackage{fancyhdr}
% Needed to manage colors
\RequirePackage{xcolor}
% Needed to use \ifxetex-\else-\fi statement
\RequirePackage{ifxetex}
% Needed to use \if-\then-\else statement
\RequirePackage{xifthen}
% Needed to use a toolbox of programming tools
\RequirePackage{etoolbox}
% Needed to change line spacing in specific environment
\RequirePackage{setspace}
% Needed to manage fonts
\RequirePackage[quiet]{fontspec}
% To support LaTeX quoting style
\defaultfontfeatures{Ligatures=TeX}
% Needed to manage math fonts
\RequirePackage[math-style=TeX,vargreek-shape=unicode]{unicode-math}
% Needed to use icons from font-awesome
% (https://github.com/posquit0/latex-fontawesome)
\RequirePackage{fontawesome}
% Needed to deal a paragraphs
\RequirePackage{parskip}
% Needed to deal hyperlink
\RequirePackage[hidelinks]{hyperref}
\hypersetup{%
  pdftitle={},
  pdfauthor={},
  pdfsubject={},
  pdfkeywords={}
}

%-------------------------------------------------------------------------------
%                Configuration for directory locations
%-------------------------------------------------------------------------------
% Configure a directory location for fonts(default: 'fonts/')
\newcommand*{\fontdir}[1][fonts/]{\def\@fontdir{#1}}
\fontdir


%-------------------------------------------------------------------------------
%                Configuration for layout
%-------------------------------------------------------------------------------
%% Page Layout
% Configure page margins with geometry
\geometry{left=2.0cm, top=1.5cm, right=2.0cm, bottom=2.0cm, footskip=0cm}

%% Header & Footer
% Set offset to each header and footer
\fancyhfoffset{0em}
% Remove head rule
\renewcommand{\headrulewidth}{0pt}
% Clear all header & footer fields
\fancyhf{}
% Enable if you want to make header or footer using fancyhdr
\pagestyle{fancy}


%-------------------------------------------------------------------------------
%                Configuration for colors
%-------------------------------------------------------------------------------
% Gray-scale colors
\definecolor{white}{HTML}{FFFFFF}
\definecolor{black}{HTML}{000000}
\definecolor{darkergray}{HTML}{222222}
\definecolor{darkgray}{HTML}{333333}
\definecolor{gray}{HTML}{5D5D5D}
\definecolor{lightgray}{HTML}{999999}
% Basic colors
\definecolor{green}{HTML}{C2E15F}
\definecolor{orange}{HTML}{FDA333}
\definecolor{purple}{HTML}{D3A4F9}
\definecolor{red}{HTML}{FB4485}
\definecolor{blue}{HTML}{6CE0F1}
% Text colors
\definecolor{darktext}{HTML}{414141}
\colorlet{text}{darkgray}
\colorlet{graytext}{gray}
\colorlet{lighttext}{lightgray}
% Awesome colors
\definecolor{awesome-emerald}{HTML}{00A388}
\definecolor{awesome-skyblue}{HTML}{0395DE}
\definecolor{awesome-red}{HTML}{DC3522}
\definecolor{awesome-pink}{HTML}{EF4089}
\definecolor{awesome-orange}{HTML}{FF6138}
\definecolor{awesome-nephritis}{HTML}{27AE60}
\definecolor{awesome-concrete}{HTML}{95A5A6}
\definecolor{awesome-darknight}{HTML}{131A28}
\colorlet{black}{black}

% Awesome section color
\newcounter{colorCounter}
\def\@sectioncolor#1#2#3{%
  {%
    \color{%
      \ifcase\value{colorCounter}%
        awesome\or%
        awesome\or%
        awesome\or%
        awesome\or%
        awesome\else%
        awesome\fi%
    } #1#2#3%
  }%
  \stepcounter{colorCounter}%
}


%-------------------------------------------------------------------------------
%                Configuration for fonts
%-------------------------------------------------------------------------------
% Set font for header (default is Roboto)
\newfontfamily\headerfont[
  Path=\@fontdir,
  UprightFont=*-Regular,
  ItalicFont=*-Italic,
  BoldFont=*-Bold,
  BoldItalicFont=*-BoldItalic,
]{OpenSans}

\newfontfamily\headerfontlight[
  Path=\@fontdir,
  UprightFont=*-Light,
  ItalicFont=*-LightItalic,
  BoldFont=*-Semibold,
  BoldItalicFont=*-SemiboldItalic,
]{OpenSans}

% Set font for body (default is Source Sans Pro)
\newfontfamily\bodyfont[
  Path=\@fontdir,
  UprightFont=*-Regular,
  ItalicFont=*-Italic,
  BoldFont=*-Medium,
  BoldItalicFont=*-BoldItalic
]{Roboto}

\newfontfamily\bodyfontlight[
  Path=\@fontdir,
  UprightFont=*-Light,
  ItalicFont=*-LightItalic,
  BoldFont=*-Medium,
  BoldItalicFont=*-MediumItalic
]{Roboto}


%-------------------------------------------------------------------------------
%                Configuration for styles
%-------------------------------------------------------------------------------
% Configure styles for each CV elements
% For fundamental structures
\newcommand*{\sectionstyle}[1]{{\fontsize{13pt}{15.6pt}\headerfontlight\bfseries\color{black}\@sectioncolor #1}}

% For elements of entry
\newcommand*{\entrytitlestyle}[1]{{\fontsize{11pt}{13.2pt}\bodyfontlight\bfseries\color{black} #1}}
\newcommand*{\entrypositionstyle}[1]{{\fontsize{9pt}{10.8pt}\bodyfontlight\scshape\color{black} #1}}
\newcommand*{\entrydatestyle}[1]{{\fontsize{9pt}{10.8pt}\bodyfontlight\slshape\color{black} #1}}
\newcommand*{\entrylocationstyle}[1]{{\fontsize{9pt}{10.8pt}\bodyfontlight\color{black} #1}}
\newcommand*{\descriptionstyle}[1]{{\fontsize{10pt}{12pt}\bodyfont\upshape\color{black} #1}}
\newcommand*{\datedescstyle}[1]{{\fontsize{10pt}{12pt}\bodyfontlight\slshape\color{black} #1}}
\newcommand*{\detailstyle}[1]{{\fontsize{9pt}{10.8pt}\bodyfontlight\upshape\color{black} #1}}


%-------------------------------------------------------------------------------
%                Commands for utilities
%-------------------------------------------------------------------------------
% Use to align an element of tabular table
\newcolumntype{L}[1]{>{\raggedright\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{C}[1]{>{\centering\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}
\newcolumntype{R}[1]{>{\raggedleft\let\newline\\\arraybackslash\hspace{0pt}}m{#1}}

% Use to draw horizontal line with specific thickness
\def\vhrulefill#1{\leavevmode\leaders\hrule\@height#1\hfill \kern\z@}

% Use to execute conditional statements by checking empty string
\newcommand*{\ifempty}[3]{\ifthenelse{\isempty{#1}}{#2}{#3}}


% Define a section for CV
% Usage: \cvsection{<section-title>}
\newcommand{\cvsection}[1]{%
    \begin{center}
        \color{darkergray}\vhrulefill{0.8pt}
        \uppercase{\sectionstyle{#1}}
        \color{darkergray}\vhrulefill{0.8pt}
    \end{center}
    \vspace*{0.6em}
}

%----------------------------------------------
% Top level environment
% ---------------------------------------------

% Define an environment for cventry
\newenvironment{cventries}{%
    \begin{center}
    }{%
\end{center}
}

% Define an environment for bullet only entry
\newenvironment{cvbulletentries}{%
    \vspace*{-0.5em}
    \begin{center}
        \renewcommand*{\arraystretch}{0.2}
        \setlength{\tabcolsep}{0pt}
        %\begin{tabular*}{\textwidth}{ L{\textwidth - 1.5cm} @{\extracolsep{\fill}} r}
        \begin{tabular*}{\textwidth}{ L{\textwidth - 0.80cm} R{1cm}}
        }{%
    \end{tabular*}
    \end{center}
    \vspace*{1em}
}

% ---------------------------------------------
% Placeholders
% ---------------------------------------------

% Define an entry of cv information
% Usage: \cventry{<position>}{<title>}{<date>}{<points>}
\newcommand*{\cventry}[4]{%
    %\par\addvspace{-1ex}
    \setlength{\tabcolsep}{0pt}
    \setlength{\extrarowheight}{0pt}
    \begin{tabular*}{\textwidth}{L{\textwidth - 5.5cm} R{5.5cm}}
        \entrytitlestyle{#2} | \entrypositionstyle{#1} & \entrydatestyle{#3} \\
        \multicolumn{2}{L{\textwidth}}{\descriptionstyle{#4}} \\
    \end{tabular*}
    \nobreak\vspace*{-0.5em}
}

% Define an entry of cv information with a byline (info)
% Usage: \cventrylong{<position>}{<title>}{<date>}{<info>}{<points>}
\newcommand*{\cventrylong}[5]{%
    %\par\addvspace{-1ex}
    \setlength{\tabcolsep}{0pt}
    \setlength{\extrarowheight}{0pt}
    \begin{tabular*}{\textwidth}{L{\textwidth - 5.5cm} R{5.5cm}}
        \entrytitlestyle{#2} | \entrypositionstyle{#1} & \entrydatestyle{#3} \\
        \multicolumn{2}{L{\textwidth}}{\detailstyle{#4}} \\
        \multicolumn{2}{L{\textwidth}}{\descriptionstyle{#5}} \\
    \end{tabular*}
    \nobreak\vspace*{-0.5em}
}

% Define an environment for bullets


% Define an entry of project information
% Usage: \project entry{<title>}{<designation>}{<guide>}{<date>}{<description>}{<points>}
\newcommand*{\projectentry}[6]{%
    %\par\addvspace{-1ex}
    \setlength{\tabcolsep}{0pt}
    \setlength{\extrarowheight}{0pt}
    \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 5.5cm} R{5.5cm}}
        \entrytitlestyle{#1} | \entrypositionstyle{#2} & \entrydatestyle{#4} \\
        \entrylocationstyle{#5} & \entrypositionstyle{#3} \\
        \multicolumn{2}{L{\textwidth}}{\descriptionstyle{#6}} \\
    \end{tabular*}
    \nobreak\vspace*{-0.5em}
}

% Define an entry of project information
% Usage: \project entry{<title>}{<guide>}{<date>}{<description>}{<points>}
\newcommand*{\acadprojectentry}[5]{%
    %\par\addvspace{-1ex}
    \setlength{\tabcolsep}{0pt}
    \setlength{\extrarowheight}{0pt}
    \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} L{\textwidth - 5.5cm} R{5.5cm}}
        \entrytitlestyle{#1} & \entrydatestyle{#3} \\
        \entrylocationstyle{#4} & \entrypositionstyle{#2} \\
        \multicolumn{2}{L{\textwidth}}{\descriptionstyle{#5}} \\
    \end{tabular*}
    \nobreak\vspace*{-0.5em}
}


% Usage: \cvpor{<title>}{<date>}{<info>}{<description>}
\newcommand*{\cvpor}[4]{%
    %\par\addvspace{-1ex}
    \setlength\tabcolsep{0pt}
    \setlength{\extrarowheight}{0pt}
    \begin{tabular*}{\textwidth}{L{\textwidth - 5.5cm} R{5.5cm}}
        \entrytitlestyle{#1} & \entrydatestyle{#2} \\
        \multicolumn{2}{L{\textwidth}}{\entrylocationstyle{#3}} \\
        \multicolumn{2}{L{\textwidth}}{\descriptionstyle{#4}} \\
    \end{tabular*}
    \nobreak\vspace*{-0.5em}
}

% Define an environment for cvskill
\newenvironment{cvskills}{%
    \begin{center}
        \setlength\tabcolsep{1.5ex}
        \setlength{\extrarowheight}{0pt}
        \begin{tabular*}{\textwidth}{@{\extracolsep{\fill}} r L{\textwidth * \real{0.9}}}
        }{%
    \end{tabular*}
\end{center}
    \nobreak\vspace*{0.6em}
}

% ----------------------------------------------
% Single instances
% ----------------------------------------------
% Define a line of cv information(skill)
% Usage: \cvskill{<type>}{<skillset>}
\newcommand*{\cvskill}[2]{%
	\descriptionstyle{\textbf{#1}} & \descriptionstyle{#2}\\
}

\newcommand*{\datedbullet}[2]{%
    \descriptionstyle{#1} & \datedescstyle{#2}\\
}

%---------------------------------------------------
% Itemize environment derivatives
%---------------------------------------------------
% Define an environment for lists with bullets as main
\newenvironment{cvonlybullets}{%
    %\par\addvspace{-0.5ex}
    \begin{justify}
        \begin{itemize}[leftmargin=2ex, nolistsep]
            \setlength\itemsep{0em}
            \setlength{\parskip}{0pt}
            \renewcommand{\labelitemi}{\strut{\raisebox{-0.1em}{\large\textbullet}}}
        }{%
        \vspace*{-\baselineskip}
    \end{itemize}
\end{justify}
%\par\nobreak\addvspace{1em}
}

% Define an environment for lists sans bullets as main
\newenvironment{cvnobullets}{%
    %\par\addvspace{-0.5ex}
    \begin{justify}
        \begin{itemize}[leftmargin=0ex, nolistsep]
            \setlength\itemsep{0em}
            \setlength{\parskip}{0pt}
            \renewcommand{\labelitemi}{}
        }{%
        \vspace*{-\baselineskip}
    \end{itemize}
\end{justify}
%\par\nobreak\addvspace{1em}
}

% Define an environment for cvitems(for cventry)
\newenvironment{cvitems}{%
    \vspace*{-4mm}
    \begin{justify}
        \begin{itemize}[leftmargin=2ex, nolistsep]
            \setlength\itemsep{0.15em}
            \setlength{\parskip}{0pt}
            \renewcommand{\labelitemi}{\strut{\raisebox{-0.1em}{\large\textbullet}}}
        }{%
    \end{itemize}
\end{justify}
%\vspace{-2mm}
}
