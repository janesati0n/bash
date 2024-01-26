#!/bin/bash
# Script na archivovanie suborov

archive_path=$1
file_path=$2

echo "Choose archive method:"
echo "1. tar"
echo "2. bz2"
echo "3. tar.bz2"
echo "4. gz"
echo "5. tar.gz"
echo "6. rar"
echo "7. zip"
echo "8. 7z"
read -p "Your choice (1-8): " method

# tar
if [ $"method" -eq 1 ]
        then
        tar -cvf archive_test.tar archive_test
fi

# bz2
if [ $"method" -eq 2 ]
        then
        bzip2 -c archive_test > archive_test.bz2
fi

if [ $"method" -eq 3 ]
        then

fi

if [ $"method" -eq 4 ]
        then

fi

if [ $"method" -eq 5 ]
        then

fi

if [ $"method" -eq 6 ]
        then

fi

if [ $"method" -eq 7 ]
        then

fi

if [ $"method" -eq 8 ]
        then

fi


# tar.bz2
tar -cvjf archive_test.tar.bz2 archive_test

# tar.gz (tgz)
tar -cvzf archive_test.tar.gz archive_test

# bz2
bzip2 -c archive_test > archive_test.bz2

# rar
rar a archive_test.rar archive_test

# gz
gzip -c archive_test > archive_test.gz

# tar
tar -cvf archive_test.tar archive_test

# zip
zip archive_test.zip archive_test

# 7z
7z a archive_test.7z archive_test
