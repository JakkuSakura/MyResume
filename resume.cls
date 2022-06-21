\ProvidesClass{resume}[Resume class]

\LoadClass[10pt,letterpaper]{article} % Font size and paper type

\usepackage[parfill]{parskip} % Remove paragraph indentation
\usepackage{graphicx}
\usepackage{array} % Required for boldface (\bf and \bfseries) tabular columns
\usepackage{ifthen} % Required for ifthenelse statements

\usepackage{tikz}
\usetikzlibrary{calc}

\usepackage{fontspec}
\usepackage{fontawesome5}

\pagestyle{empty} % Suppress page numbers
\usepackage{fontspec}
\usepackage[colorlinks,linkcolor=blue,urlcolor=blue]{hyperref}
\usepackage[left=0.6in,top=0.6in,right=0.6in,bottom=0.6in]{geometry} % Document margins

\setsansfont{DejaVu Serif}
\usepackage {ctex}

\newcommand\threeparts[4][t]{
  \parbox[#1]{.2\textwidth}{\raggedright#2}\hfill
  \parbox[#1]{.5\textwidth}{\centering#3}\hfill
  \parbox[#1]{.23\textwidth}{\raggedleft#4}
}

\usepackage{xcolor}
\definecolor{shadecolor}{RGB}{230,230,230}
\newcommand{\bgcolor}[1]{\par\noindent\colorbox{shadecolor}
{\parbox{\dimexpr\textwidth-2\fboxsep\relax}{#1}}}

%----------------------------------------------------------------------------------------
%	HEADINGS COMMANDS: Commands for printing name and address
%----------------------------------------------------------------------------------------

\def \name#1{\def\@name{#1}} % Defines the \name command to set name
\def \@name {} % Sets \@name to empty by default

\def \addressSep {$\diamond$} % Set default address separator to a diamond

% One, two or three address lines can be specified 
\let \@addressone \relax
\let \@addresstwo \relax
\let \@addressthree \relax

% \address command can be used to set the first, second, and third address (last 2 optional)
\def \address #1{
  \@ifundefined{@addresstwo}{
    \def \@addresstwo {#1}
  }{
  \@ifundefined{@addressthree}{
  \def \@addressthree {#1}
  }{
     \def \@addressone {#1}
  }}
}

% \printaddress is used to style an address line (given as input)
\def \printaddress #1{
  \begingroup
    \def \\ {\addressSep\ }
    \centerline{\texttt{#1}}
  \endgroup
  \par
  \addressskip
}

% \printname is used to print the name as a page header
\def \printname {
  \begingroup
    \hfil{\namesize \bf{\@name}}\hfil
    \nameskip\break
  \endgroup
}

%----------------------------------------------------------------------------------------
%	PRINT THE HEADING LINES
%----------------------------------------------------------------------------------------

\let\ori@document=\document
\renewcommand{\document}{
  \ori@document  % Begin document
  \printname % Print the name specified with \name
  \@ifundefined{@addressone}{}{ % Print the first address if specified
    \printaddress{\@addressone}}
  \@ifundefined{@addresstwo}{}{ % Print the second address if specified
    \printaddress{\@addresstwo}}
     \@ifundefined{@addressthree}{}{ % Print the third address if specified
    \printaddress{\@addressthree}}
    \vspace{-2.3em}
}

%----------------------------------------------------------------------------------------
%	SECTION FORMATTING
%----------------------------------------------------------------------------------------

% Defines the rSection environment for the large sections within the CV
\newenvironment{rSection}[1]{ % 1 input argument - section name
  \sectionskip
  {\bf \large \texttt{\heiti #1}} % Section title
  \smallskip
  \hrule % Horizontal line
  \vspace{-0.5em}
  \songti
}{
}

\newenvironment{rExperience}[3]{ % 3 input arguments - job title - company name - date
  \bgcolor{\threeparts{#1}{#2}{#3}}
  }{
}
 
\newenvironment{rProject}[3]{ % 3 input arguments - project type - project name - date
  \bgcolor{\threeparts{#1}{#2}{#3}}
  }{
}

% The below commands define the whitespace after certain things in the document - they can be \smallskip, \medskip or \bigskip
\def\namesize{\LARGE} % Size of the name at the top of the document
\def\addressskip{\smallskip} % The space between the two address (or phone/email) lines
\def\sectionlineskip{\smallskip} % The space above the horizontal line for each section 
\def\nameskip{\smallskip} % The space after your name at the top
\def\sectionskip{\medskip} % The space after the heading section
