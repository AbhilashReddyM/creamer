\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{creamer}[17/10/2022, v0.1]

\PassOptionsToPackage{svgnames}{xcolor}
\LoadClass[aspectratio=169]{beamer}

\usecolortheme[named=black]{structure}

\usefonttheme{professionalfonts} % required for mathspec
\usefonttheme[onlymath]{serif}

\setbeamerfont{title}{size=\huge,series=\scshape,parent=professional}
\setbeamerfont{subtitle}{size=\scriptsize,series=\itshape,parent=professional}
\setbeamerfont{author}{size=\scriptsize,series=\scshape,parent=professional}
\setbeamerfont{institute}{size=\scriptsize,series=\scshape,parent=professional}
\setbeamerfont{date}{size=\scriptsize,series=\scshape,parent=professional}
\setbeamerfont{frametitle}{series=\itshape}
\usepackage[T1]{fontenc}
\usepackage{tcolorbox}

\usepackage{setspace}

\usepackage{xstring}
\makeatletter
\newif\ifincludebackup
\IfSubStr{\@classoptionslist}{handout}
{\includebackupfalse}
{\includebackuptrue}
\makeatother
\usefonttheme[onlymath]{serif}
\usepackage{amsmath,amssymb,amsthm,mathtools,bm}
\usepackage{mathrsfs}
\usepackage{derivative}
% \usepackage{mathspec}
\usepackage[makeroom,thicklines]{cancel}

% \renewcommand{\CancelColor}{\color{red}}

\usepackage{graphicx}
\graphicspath{{./img/}}
\usepackage{multimedia}
\usepackage{media9}
\addmediapath{{./img/}}
\usepackage{rotate}
\usepackage{tikz}

\definecolor{darkBlue}{RGB}{0,0,70}
\definecolor{airforceblue}{rgb}{0.36, 0.54, 0.66}
\definecolor{lightBlue}{RGB}{84, 116, 147}
\definecolor{Myellow}{RGB}{255,203,5}
\definecolor{Mblue}{RGB}{0,39,76}


\setbeamercolor{sectionColor}{fg=white, bg=lightBlue}
\setbeamercolor{footline}{fg=white, bg=Mblue}
\setbeamercolor{separation line}{bg=Mblue}
\setbeamercolor{titlelike}{parent=sectionColor}

\setbeamercolor{section in head/foot}{fg=black}

\setbeamertemplate{blocks}[rounded][shadow=true]
\beamertemplatenavigationsymbolsempty
\setbeamertemplate{itemize item}[circle]
\setbeamertemplate{itemize subitem}[line]
\setbeamertemplate{itemize subsubitem}[circle]
\setbeamertemplate{enumerate item}[circle]
\setbeamertemplate{enumerate subitem}[circle]
\setbeamertemplate{enumerate subsubitem}[circle]


\setbeamercolor{palette}{bg=Mblue}
\setbeamertemplate{section in head/foot}{\colorbox{lightBlue}{\insertsectionhead}}
\setbeamertemplate{section in head/foot shaded}{\color{white}\insertsectionhead}


\setbeamertemplate{frametitle}{%
\nointerlineskip%
\begin{beamercolorbox}[wd=\paperwidth,ht=2.0ex,dp=0.6ex]{frametitle}
  \hspace*{1ex}\insertframetitle%
\end{beamercolorbox}%
}

\makeatletter
\newlength\beamerleftmargin
\setlength\beamerleftmargin{\Gm@lmargin}
\makeatother

% set Headline for regular slides
\setbeamertemplate{headline}{%
\leavevmode%
\hbox{%
\begin{beamercolorbox}[wd=\paperwidth,ht=2.5ex,dp=1.125ex]{palette}%
  \insertsectionnavigationhorizontal{\paperwidth}{}{\hskip0pt plus1filll}
\end{beamercolorbox}%
}
}

% Set footline for regular slide
\setbeamertemplate{footline}{
  % Set color box
  \begin{beamercolorbox}[ht=1.5em,wd=\paperwidth]{footline}
  \end{beamercolorbox}
  % Position Logo
  \begin{tikzpicture}[remember picture,overlay]
    \node[anchor=south west,xshift=-1pt,yshift=-1pt] at (current page.south west)
    {\includegraphics[height=0.6cm,keepaspectratio]{M.png}};
  \end{tikzpicture}
  % Position footline texts
  \begin{tikzpicture}[remember picture,overlay]
    \node[anchor=south west,xshift=30pt,yshift=-1pt] at (current page.south west)
    {\color{white}Capecelatro Research Group @ UMich};
  \end{tikzpicture}
  \begin{tikzpicture}[remember picture,overlay]
    \node[anchor=south east,xshift=-1pt,yshift=-1pt] at (current page.south east)
    {\color{white} Science Conference, Location | \makebox[2em]{\ttfamily\insertframenumber}};
\end{tikzpicture}
}



%% title page
\defbeamertemplate*{title page}{creamer}{%
{%
\usebeamercolor{frametitle}\colorlet{creamer@@temp}{Mblue}%
\begin{tikzpicture}[overlay, remember picture]
  \fill[color=creamer@@temp] (current page.north west) rectangle ([shift = {(0, -0.50\paperheight)}] current page.north east);
\end{tikzpicture}
}

\vspace{-1.65\baselineskip}
\begin{minipage}[b][0.35\paperheight]{\textwidth}
  \vspace{\baselineskip}
  \usebeamerfont{title}
  \usebeamercolor[fg]{frametitle}
  \centering
  \inserttitle
\end{minipage}

\begin{minipage}[t][0.1\paperheight]{\textwidth}
  \usebeamerfont{subtitle}
  \usebeamercolor[fg]{frametitle}
  \centering
  \insertsubtitle
\end{minipage}
% Set the title graphic in a zero-height box, so that
% the position of other elements is not affected.

\begin{minipage}[t]{\textwidth}
  \usebeamerfont{author}
  \centering
  \insertauthor
\end{minipage}

\vspace*{\baselineskip}

\begin{minipage}[t]{\textwidth}
  \usebeamerfont{institute}
  \centering
  \insertinstitute
\end{minipage}

\vspace*{\baselineskip}

\begin{minipage}[t]{\textwidth}
  \usebeamerfont{date}
  \centering
  \insertdate
\end{minipage}
\vspace*{0pt plus 100fill}
}
