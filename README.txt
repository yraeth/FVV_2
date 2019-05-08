-------------------------
--                     --
-- IVT LaTeX templates --
--                     --
-------------------------


Instructions for compilation:
=============================

Windows (with GNU make installed, from cygwin or GnuWin32):
- MikTeX with current updates recommended
- after unzipping, execute make in the directory where Template.tex lives

  make

Windows (vanilla):
- MikTeX with current updates recommended
- after unzipping, double-click "latex2pdf.bat" in Explorer
  (in the directory where Template.tex lives)

Linux/MacOS:
- TeXlive 2011 or later recommended
- after unzipping, execute make in the directory where Template.tex lives

  make

Potential compilation errors will be shown in the console window.
In Windows, the console window will close automatically if no errors
were detected.

Temporary files are written to an automatically created subdirectory "tmp".
If no PDF is produced, a reason might be stated in the file Template.log
in this directory.


Editing:
========

Please open the file Template.tex in a conventional text editor,
use the Latin-1 encoding (also ISO-8859-1 or Windows-1252).
The file should be self-explanatory,
look for "\begin{document}" to see where the actual document starts.
The compilation results of the initial version
are in Template.pdf in the "out" subdirectory.

TeXstudio is a solid LaTeX editor that works on all supported platforms
and knows forward and inverse search
(SyncTeX, synchronization between source and PDF)
out of the box.


Version control:
================

It is a splendid idea to use version control for LaTeX documents.
Try Subversion, but don't think about branching, merging and tagging for now.
Log files (in fact, the entire tmp directory)
and compilation results (.pdf, .synctex.gz and perhaps .fmt files)
do not have to be checked in and should be ignored.
However you should store stable versions of your documents
in the "out" subdirectory and commit these.

The sources for this template can be found a the following URL:

svn+ssh://svn.ivt.ethz.ch/var/lib/svn/ivt/doc/trunk/papers/workingpapers/recurring/template

That's where all other IVT papers are located, too. If you have access
to the IVT SVN, you can add a paper based on this template to the IVT SVN
at any time with only minor conversions.

IMPORTANT: If you are using TortoiseSVN (or similar SVN apps)
and if you created a new folder
by doing a copy-paste action of the "template" folder:
Remove all the HIDDEN "SVN" or ".SVN" folders in your newly added folder
and in all subfolders
before executing a "commit" or an "add" command!

Otherwise the files in the folder "template" are overwritten
and your new folder is not added to the repository.

This applies only to TortoiseSVN 1.6 or earlier.
Subversion 1.7 and later does not have these hidden "SVN" folders anymore.


Updates:
========

You can substitute the _latexfiles subfolder with a version
from a newer Template.zip archive. This will get you an updated bibliography,
and perhaps new layouts and minor improvements for existing layouts.
You can also update the following files:
  Makefile
  Makefile.in
  cleanLatex.bat
  createLatexfilesLink.bat
  latex2pdf.bat


Contact:
========

Kirill Müller
kirill.mueller@ivt.baug.ethz.ch

