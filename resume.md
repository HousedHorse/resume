---
author:
- William Findlay
title: R&eacute;sum&eacute;
date: \today
subparagraph: yes
header-includes: |
  ``` {=latex}
  \usepackage{hyperref}
  \usepackage{amsmath}
  \usepackage{xcolor}
  \usepackage{float}
  \usepackage{listings}
  \usepackage[hang,bf]{caption}
  \usepackage{framed}
  \usepackage[section]{placeins}

  \definecolor{gray}{HTML}{404040}
  \definecolor{black}{HTML}{000000}

  \usepackage{pifont}

  \allowdisplaybreaks

  \usepackage[bottom]{footmisc}
  % fancy headers/footers
  \makeatletter
  \usepackage{fancyhdr}
  \lhead{}
  \chead{}
  \rhead{\vspace{1em}\color{gray}Last Updated: \today}
  \lfoot{}
  \cfoot{}
  \rfoot{}
  \renewcommand{\headrulewidth}{0pt}

  \usepackage{amsmath, amsfonts,amssymb, amsthm}
  \usepackage{siunitx}
  \usepackage[boxruled,lined,linesnumbered,titlenumbered]{algorithm2e}

  \usepackage{setspace}
  \usepackage{changepage}
  \usepackage[explicit]{titlesec}
  \usepackage{aliascnt}

  \floatplacement{figure}{!htbp}
  \floatplacement{table}{!htbp}
  \lstset{numbers=left,breaklines=true,frame=single,language=Python,captionpos=t,abovecaptionskip={\abovecaptionskip},
  belowcaptionskip={0.5em},aboveskip=\intextsep,showstringspaces=false,identifierstyle=\color{Blue},
  commentstyle={\color{OliveGreen}},keywordstyle={\bfseries\color{Orange}},stringstyle=\color{Purple},mathescape=true}
  \setlength{\captionmargin}{1in}

  \usepackage{geometry}

  \newgeometry{left=0.6in,top=0.75in,bottom=1in,right=0.6in}

  \newtheoremstyle{plain}
  {12pt}   % ABOVESPACE
  {12pt}   % BELOWSPACE
  {\itshape}  % BODYFONT
  {0pt}       % INDENT (empty value is the same as 0pt)
  {\bfseries} % HEADFONT
  {.}         % HEADPUNCT
  {5pt plus 1pt minus 1pt} % HEADSPACE
  {}          % CUSTOM-HEAD-SPEC

  \newtheoremstyle{definition}
  {12pt}   % ABOVESPACE
  {12pt}   % BELOWSPACE
  {\normalfont}  % BODYFONT
  {0pt}       % INDENT (empty value is the same as 0pt)
  {\bfseries} % HEADFONT
  {.}         % HEADPUNCT
  {5pt plus 1pt minus 1pt} % HEADSPACE
  {}          % CUSTOM-HEAD-SPEC

  \newtheoremstyle{remark}
  {12pt}   % ABOVESPACE
  {12pt}   % BELOWSPACE
  {\normalfont}  % BODYFONT
  {0pt}       % INDENT (empty value is the same as 0pt)
  {\itshape} % HEADFONT
  {.}         % HEADPUNCT
  {5pt plus 1pt minus 1pt} % HEADSPACE
  {}          % CUSTOM-HEAD-SPEC

  \theoremstyle{plain}

  % define theorem
  \newtheorem{theorem}{Theorem}[section]
  \providecommand*{\theoremautorefname}{Theorem}

  % define lemma
  \newtheorem{lemma}{Lemma}[section]
  \providecommand*{\lemmaautorefname}{Lemma}

  % define claim
  \newtheorem{claim}{Claim}[section]
  \providecommand*{\claimautorefname}{Claim}

  % define corollary
  \newtheorem{corollary}{Corollary}[section]
  \providecommand*{\corollaryautorefname}{Corollary}

  % define proposition
  \newtheorem{proposition}{Proposition}[section]
  \providecommand*{\propositionautorefname}{Proposition}

  % define conjecture
  \newtheorem{conjecture}{Conjecture}[section]
  \providecommand*{\conjectureautorefname}{Conjecture}

  \theoremstyle{remark}

  % define observation
  \newtheorem{observation}{Observation}[section]
  \providecommand*{\observationautorefname}{Observation}

  % define remark
  \newtheorem{remark}{Remark}[section]
  \providecommand*{\remarkautorefname}{Remark}

  \theoremstyle{definition}

  % define example
  \newtheorem{example}{Example}[section]
  \providecommand*{\exampleautorefname}{Example}

  % define definition
  \newtheorem{definition}{Definition}[section]
  \providecommand*{\definitionautorefname}{Definition}

  \newcommand{\blackbox}{\hfill$\blacksquare$}
  \usepackage{tikz}
  \newcommand*\circled[1]{\tikz[baseline=(char.base)]{
              \node[shape=circle,draw,inner sep=2pt] (char) {#1};}}

  \renewcommand{\labelitemi}{$\bullet$}
  \renewcommand{\labelitemii}{\ding{226}}
  \renewcommand{\labelitemiii}{\tiny$\blacksquare$}
  \renewcommand{\labelitemiv}{\small$\triangleright$}

  \titleformat{\paragraph} % command to change
  [runin]                  % shape  (runin, etc.)
  {\bfseries}              % format (bfseries, itshape, etc.)
  {}                       % label  (thesection, thesubsection, etc.)
  {0em}                    % separation between label and body
  {#1}        % before the body
  [.]                       % after the body

  \titleformat{\subparagraph} % command to change
  [runin]                  % shape  (runin, etc.)
  {\itshape}              % format (bfseries, itshape, etc.)
  {}                       % label  (thesection, thesubsection, etc.)
  {0em}                    % separation between label and body
  {#1}        % before the body
  [.]                       % after the body

  \let\lil\lstinputlisting
  \usepackage{afterpage}
  \hypersetup{colorlinks, allcolors=., urlcolor=blue}

  \usepackage{etoolbox}% http://ctan.org/pkg/etoolbox
  \makeatletter
  \patchcmd{\lst@GLI@}% <command>
    {\def\lst@firstline{#1\relax}}% <search>
    {\def\lst@firstline{#1\relax}\def\lst@firstnumber{#1\relax}}% <replace>
    {\typeout{listings firstnumber=firstline}}% <success>
    {\typeout{listings firstnumber not set}}% <failure>
  \makeatother

  \renewcommand\lstlistlistingname{List of Listings}
  \usepackage{chngcntr}
  \counterwithin{figure}{section}
  \counterwithin{table}{section}

  \usepackage{booktabs}
  \usepackage{longtable}
  \usepackage{array}
  \usepackage{multirow}
  \usepackage{wrapfig}
  \usepackage{float}
  \usepackage{colortbl}
  \usepackage{pdflscape}
  \usepackage{tabu}
  \usepackage{threeparttable}
  \usepackage{threeparttablex}
  \usepackage[normalem]{ulem}
  \usepackage{makecell}
  \pagestyle{fancy}

  \renewcommand{\sectionautorefname}{Section}
  \renewcommand{\subsectionautorefname}{Subection}
  \renewcommand{\subsubsectionautorefname}{Subection}
  \renewcommand{\paragraphautorefname}{}
  \renewcommand{\subparagraphautorefname}{}

  \usepackage{nameref}

  \makeatletter
  \renewcommand{\theparagraph}{\bfseries \@currentlabelname}
  \renewcommand{\thesubparagraph}{\itshape \@currentlabelname}
  \makeatother

  \definecolor{purple}{HTML}{400080}

  \titleformat{\section}
  {\color{black}\Large\scshape}
  {}
  {0em}
  {#1}[{\color{gray}\hrule}]

  \titleformat{\subsection}
  {\color{black}\bfseries}
  {}
  {0em}
  {#1}

  \titleformat{\subsubsection}
  {\color{black}}
  {}
  {0em}
  {#1}[]

  \titlespacing{\section}
  {0em}{1em}{0.5em}

  \titlespacing{\subsection}
  {0em}{0.5em}{0em}

  \titlespacing{\subsubsection}
  {0em}{0.5em}{0em}

  \renewcommand{\maketitle}{\relax}

  \usepackage{enumitem}
  \setitemize{itemsep=0em}

  \newcommand{\sep}{
    {\color{black}$\bullet$}
  }
  ```
output:
    pdf_document:
      citation_package: biblatex
      number_sections: true
      fig_crop: true
      fig_caption: true
      keep_tex: true
---

\begin{figure}
\small
\begin{minipage}[t]{0.65\textwidth}
\begin{center}
{\Huge\bfseries William Findlay}

\color{gray}

\href{https://www.github.com/willfindlay}{\color{gray}github.com/willfindlay} $\bullet$ \href{http://www.williamfindlay.com}{\color{gray}williamfindlay.com}\\
{\color{gray}(613) 296-1240} $\bullet$ \href{mailto:william@williamfindlay.com}{\color{gray}william@williamfindlay.com}
\end{center}

\color{gray}

\section{Education}
\color{black}
\textbf{Master of Computer Science} \hfill \emph{Carleton University}\\
{September 2020 - April 2021} \hfill\emph {Ottawa, ON}
\color{gray}

Accelerated Master's Program\\
CGPA: 12.0 (A+) (\textit{Course work completed during bachelor's degree})\\

\color{black}
\textbf{Bachelor of Computer Science} \hfill \emph{Carleton University}\\
{September 2015 - April 2020} \hfill\emph {Ottawa, ON}
\color{gray}

Computer and Network Security Stream\\
Accelerated Master's Program\\
CGPA: 11.5 (A)

\section{Work Experience}

\color{black}
\textbf{Research Assistant} (Linux OS Security) \hfill \emph{Carleton University}\\
April 2019 - Present \hfill\emph {Ottawa, ON}
\color{gray}
\begin{itemize}[itemsep=0em]
\item Researching the viability of eBPF-based implementations for intrusion detection systems on the GNU/Linux operating system.
\item Designed and implemented ebpH, an intrusion detection system based entirely on eBPF system introspection.
\item This research was the subject of my 2019/2020 honors thesis. You can read my thesis at \url{https://williamfindlay.com/written/thesis.pdf}.
\end{itemize}

\color{black}
\textbf{Teaching Assistant} (COMP3000 Operating Systems) \hfill \emph{Carleton University}\\
September 2018 - Present \hfill\emph {Ottawa, ON}
\color{gray}
\begin{itemize}[itemsep=0em]
\item Nominee for the \href{https://carleton.ca/tasupport/taawards/edc-outstanding-ta-awards/}{Outstanding Teaching Assistant Award} in both the 2018/2019 and 2019/2020 academic years.
\item Assisted the professor in development of course material.
\item Ran tutorial sessions for groups of 50 students.
\item Took a leadership role to ensure tutorials proceeded smoothly.
\item Held weekly office hours and workshops for students.
\item Graded assignments and tests and gave appropriate feedback.
\end{itemize}

\color{black}
\textbf{Service Department Supervisor} \hfill \emph{Metro Ontario, Inc.}\\
April 2014 - January 2018 \hfill\emph {Ottawa, ON}
\color{gray}
\begin{itemize}[itemsep=0em]
\item Managed day-to-day operations in the front end service department.
\item In charge of store payroll and accounting on a part-time basis.
\item Exhibited superior customer service skills as required.
\end{itemize}

\section{Projects \normalfont \small (See more on \href{https://www.github.com/willfindlay}{GitHub})}

\subsection{ebpH (eBPF Intrusion Detection System)}
\begin{itemize}[itemsep=0em]
\item An intrusion detection system for Linux written entirely in eBPF and Python3.
\item Establishes per-executable system call profiles in order to establish normal behavior and detect anomalies.
\item Full source code available at \url{https://github.com/willfindlay/ebph}.
\end{itemize}

%\subsection{Snoopy (eBPF Debugger)}
%\begin{itemize}[itemsep=0em]
%\item System call tracing debugger written in eBPF and Python3.
%\item Competitor to strace, with much higher performance due to lack of reliance on the ptrace system call.
%\item Full source code available at \url{https://github.com/willfindlay/snoopy}.
%\end{itemize}

\subsection{bpf-keylogger (eBPF Keylogger Program)}
\begin{itemize}[itemsep=0em]
\item Fully functional keylogger for GNU/Linux written in eBPF and Python3.
\item Full source code available at \url{https://github.com/willfindlay/bpf-keylogger}.
\end{itemize}

\end{minipage}
\hfill
\begin{minipage}[t]{0.32\textwidth}
\color{gray}
\ %
\vspace{-1.5em}

\section{Languages}

\subsection{Programming}

\subsubsection{10,000 or more lines}

C, C++, Python

\subsubsection{5,000 - 10,000 lines}

Java, Javascript

\subsubsection{1,000 - 5,000 lines}

Vimscript, R, Rust, Golang

\subsection{Markup}

\LaTeX, HTML, CSS, Markdown

\subsection{Human}

English, French

\section{Workflow}

\subsection{Operating System}
GNU/Linux (Arch Linux)

\subsection{Window Manager}
i3wm

\subsection{Shell}
Zsh

\subsection{Text Editor}
Vim

\subsection{Version Control}
Git, GitHub

\section{Technologies}
\vspace{0.5em}
\begin{itemize}[itemsep=0em]
\item eBPF, XDP, bcc
\item gdb
\item flask
\item numpy, scipy, pandas
\item Qt
\end{itemize}

\section{Technical Skills}
\vspace{0.5em}
\begin{itemize}[itemsep=0em]
\item Linux kernel development
\item Low level systems programming
\item Python scripting, Golang
\item Technical writing and documentation
\end{itemize}

\section{General Skills}
\vspace{0.5em}
\begin{itemize}[itemsep=0em]
\item Team leader
\item Dedicated
\item Goal-oriented
\end{itemize}

\end{minipage}
\end{figure}
