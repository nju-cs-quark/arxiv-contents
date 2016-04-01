echo Step1. copying files from arxiv-contents to _arxiv
"D:\Program Files\Java\jdk1.8.0_25\bin\java.exe" -jar "copy-files.jar"

echo Step2. re-generate the website contents
D:
cd "D:\workspaces\repositories\kun-wang.github.io"
START /B jekyll server

echo Step3. submit and push files to GitHub
D:
cd "D:\workspaces\repositories\kun-wang.github.io"
set info=add the latest papers on arXiv %date%
git add -A
git commit -m "%info%"
git push -u origin master
