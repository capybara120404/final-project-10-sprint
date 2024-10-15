#!/bin/bash
mkdir task
cd "task"
mkdir dir1 dir2 dir3 dir3/dir4
cd ..

cd task

touch dir2/empty

touch dir2/hello.sh
echo '#!/bin/bash' > dir2/hello.sh
echo 'echo "$1, привет!"' >> dir2/hello.sh

chmod 764 dir2/hello.sh

touch dir2/list.txt
ls dir2 > dir2/list.txt

cp -r dir2/* dir3/dir4

touch dir1/summary.txt
find . -name "*.txt" > dir1/summary.txt

cat dir2/list.txt >> dir1/summary.txt

NAME="Всем студентам"

chmod +x dir2/hello.sh
dir2/hello.sh "$NAME" >> dir1/summary.txt

mv dir1/summary.txt "Практическое задание"

cat "Практическое задание"

grep "dir" "Практическое задание" | sort

cd ..

rm -rf task
