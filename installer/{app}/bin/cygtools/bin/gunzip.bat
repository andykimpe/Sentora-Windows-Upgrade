@echo off
rem gunzip for Sentora
rem write by Andy Kimpe (andykimpe@gmail.com)
rem based to cygwin bash convert
if %1% == --version (
  echo gunzip "(gzip)" 1.8
  echo Copyright "(C)" 2016 Free Software Foundation, Inc.
  echo Copyright "(C)" 1993 Jean-loup Gailly.
  echo This is free software.  You may redistribute copies of it under the terms of
  echo the GNU General Public License "<http://www.gnu.org/licenses/gpl.html>".
  echo There is NO WARRANTY, to the extent permitted by law.
  echo.
  echo Written by Andy Kimpe.
  goto EXIT
)
if %1% == --help (
  echo Usage: gunzip "[OPTION]"... "[FILE]"...
  echo Uncompress FILEs "(by default, in-place)".
  echo.
  echo Mandatory arguments to long options are mandatory for short options too.
  echo.
  echo -c, --stdout      write on standard output, keep original files unchanged
  echo -f, --force       force overwrite of output file and compress links
  echo -k, --keep        keep "(don't delete)" input files
  echo -l, --list        list compressed file contents
  echo -n, --no-name     do not save or restore the original name and time stamp
  echo -N, --name        save or restore the original name and time stamp
  echo -q, --quiet       suppress all warnings
  echo -r, --recursive   operate recursively on directories
  echo -S, --suffix=SUF  use suffix SUF on compressed files
  echo    --synchronous synchronous output "(safer if system crashes, but slower)"
  echo -t, --test        test compressed file integrity
  echo -v, --verbose     verbose mode
  echo    --help        display this help and exit
  echo    --version     display version information and exit
  echo.
  echo With no FILE, or when FILE is -, read standard input.
  echo.
  echo Report bugs to "<bug-gzip@gnu.org>".
  goto EXIT
)

gzip -d %*
:EXIT