ensure_path('TEXINPUTS', './styles//');
$pdf_mode = 5;  # use xelatex
$xelatex = 'xelatex -synctex=1 -interaction=nonstopmode -file-line-error %O %S';
