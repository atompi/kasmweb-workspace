```
pandoc --toc --from markdown --pdf-engine=xelatex -V mainfont='WenQuanYi Micro Hei' -V CJKmainfont='WenQuanYi Micro Hei' --template=../templates/eisvogel --listings -s example.md -o example.pdf

pandoc --reference-doc=../templates/templ.docx -s example.md -o example.docx
```

```
mkdir bin
cd bin
wget https://github.com/marp-team/marp-cli/releases/download/v2.2.0/marp-cli-v2.2.0-linux.tar.gz
tar -zxf marp-cli-v2.2.0-linux.tar.gz
cd ../posts
marp slide-deck.md
marp slide-deck.md -o output.html
marp --pdf slide-deck.md
marp slide-deck.md -o converted.pdf
```

```
wkhtmltopdf -B 0 -L 0 -R 0 -T 4 https://atompi.com/about/ about-atompi.pdf
```
