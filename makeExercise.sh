#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <exercise number>"
  exit 1
fi

ex_num=$1
folder_name="exercises/ex$ex_num"

mkdir -p "$folder_name/problems"

cat <<EOF > "$folder_name/Ex$ex_num.tex"
\\documentclass{article}

\\input{../../preamble.tex}

\\begin{document}

\Exercise{$ex_num}

\\input{problems/p1.tex}
\\end{document}
EOF

cat <<EOF > "$folder_name/problems/p1.tex"
%%% QUESTION %%%

\begin{problem}{}

\end{problem}

%%% SOLUTION %%%
EOF
