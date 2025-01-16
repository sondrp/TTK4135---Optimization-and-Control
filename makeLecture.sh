#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <lec number>"
  exit 1
fi

lec_num=$1
folder_name="lectures/lec$lec_num"

mkdir $folder_name

cat <<EOF > "$folder_name/l$lec_num.tex"
\\documentclass{article}

\\input{../../preamble.tex}

\Lecture{Lecture $lec_num: }{\today}

\\begin{document}

\\maketitle

\\end{document}
EOF
