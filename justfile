set shell := ["bash", "-c"]

build_dir := "build"
xelatex_args := "-synctex=1 -interaction=nonstopmode -file-line-error -output-directory=" + build_dir

# build both en and zh
all: en zh

# build english resume
en:
    mkdir -p {{ build_dir }}
    xelatex {{ xelatex_args }} resume.tex

# build chinese resume
zh:
    mkdir -p {{ build_dir }}
    xelatex {{ xelatex_args }} resume-zh_CN.tex

# clean build artifacts
clean:
    rm -rf {{ build_dir }}
