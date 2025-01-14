#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <exercise number>"
  exit 1
fi

ex_num=$1
folder_name="ex$ex_num"

mkdir -p "$folder_name/problems"

cat <<EOF > "$folder_name/Ex$ex_num.tex"
\\documentclass{article}
\\usepackage{graphicx}
\\usepackage{amsmath}
\\usepackage{amssymb}
\\usepackage{listings}
\\usepackage{xcolor}
\\usepackage{tcolorbox}
\\usepackage{caption}
\\usepackage[hidelinks]{hyperref}
\\setlength{\\parindent}{0pt}
\\usepackage[margin=0.5in]{geometry}

\\input{../../macros.tex}

\\begin{document}

\\setExerciseNumber{$ex_num}

\\input{problems/p1.tex}
\\end{document}
EOF

cat <<EOF > "$folder_name/problems/p1.tex"
%%% QUESTION %%%

\begin{problem}{}

\end{problem}

%%% SOLUTION %%%
EOF
