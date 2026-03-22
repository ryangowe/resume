set shell := ["bash", "-c"]

build_dir := "build"

# build both en and zh
all: en zh

# build english resume
en:
    mkdir -p {{ build_dir }}
    latexmk -outdir={{ build_dir }} resume.tex

# build chinese resume
zh:
    mkdir -p {{ build_dir }}
    latexmk -outdir={{ build_dir }} resume-zh_CN.tex

# clean build artifacts
clean:
    rm -rf {{ build_dir }}
