#!/bin/bash

# Make sure to change colors on hyperlinks and Sweave to black

R CMD Sweave IPSUR.Rnw
latex IPSUR.tex
bibtex IPSUR
makeindex IPSUR
latex IPSUR.tex
latex IPSUR.tex
dvips IPSUR
gs -dSAFER -dNOPAUSE -dBATCH -sDEVICE=pdfwrite -sPAPERSIZE=a4 -dPDFSETTINGS=/printer -dCompatibilityLevel=1.3 -dMaxSubsetPct=100 -dSubsetFonts=true -dEmbedAllFonts=true -sOutputFile=IPSUR.pdf IPSUR.ps

