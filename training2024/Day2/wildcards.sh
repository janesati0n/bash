#/bin/bash
# Precvicovanie wildcardov v priecinku testDir pomocou vytvorenych suborov:
# touch {tree,rock,dirt}_{asia,us,ca}_{fall,winter,spring,summer}


# 1) list all files in folder ending with _fall
  ls -l *_fall
# 2) list all files starting with r or t
  ls -l [rt]*
# 3) list all files starting with anything but r or t
  ls -l [!rt]*
# 4) all files starting with dirt followed by one character and then have the string "ca" followed by any number of letters
  ls -l dirt?ca*
