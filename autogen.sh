#!/bin/bash
set -e

# To run this script on MS Windows you might have to check that the
# paths for PKG_CONFIG_PATH and ACLOCAL_INCLUDE is correctly.
if [ "$OSTYPE" = "msys" ]; then
    export PKG_CONFIG_PATH=/c/GTK/lib/pkgconfig:/c/python25/lib/pkgconfig
    export ACLOCAL_INCLUDE=" -I /c/GTK/share/aclocal"
fi


aclocal $ACINCLUDE

autoconf

if [ "$OSTYPE" = "msys" ]; then	
  PYTHON=/c/python27/python.exe GIT=C:/Programfiler/Git/bin/git.exe ./configure --enable-winmidi PYTHONDLL=/C/WINDOWS/system32/python27.dll $CONFIGURE_OPTS
else
  ./configure $CONFIGURE_OPTS
fi

make solfege/_version.py
make solfege/languages.py

echo
echo "You can now run solfege with no further action from the source directory."
echo "The user manual and some lesson files will be missing until you build it"
echo "by running 'make'. The missing lesson files will generate some warnings"
echo "that you should ignore. Don't report them as bugs!"
