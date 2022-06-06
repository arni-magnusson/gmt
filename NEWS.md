# gmt 2.0.3 (2022-06-06)

* Improved deg2num() and num2deg() so they handle NA values.

* Added modern.sh script, demonstrating GMT modern mode.




# gmt 2.0.2 (2020-11-23)

* Maintenance release.




# gmt 2.0-1 (2017-09-12)

* Removed importing of unnecessary packages.




# gmt 2.0-0 (2017-06-20)

* Adapted package to GMT version 5.

* Changed psclose() so it does not alter bounding box declarations or remove
  configuration and history files.




# gmt 1.2-0 (2014-03-11)

* Added NAMESPACE file.

* Changed example to A4 paper.




# gmt 1.1-9 (2011-02-09)

* Changed -M to -m in psbar.




# gmt 1.1-3 (2009-04-20)

* Updated URL of GMT manual.




# gmt 1.1-1 (2007-08-02)

* Improved psxy(), pstext(), and psclose() so they no longer expect a
  Mercator-projected map, but any kind of map.

* Simplified gmt.system(), thanks to improved system() in R 2.5.0.




# gmt 1.1-0 (2007-07-29)

* Added function num2deg() to convert numeric to degrees, the opposite of
  deg2num().

* Changed gmt() so quiet=TRUE by default, and files .gmtcommands4 and
  .gmtdefaults4 are created in dirname(file) instead of R working directory.

* Changed psxy(), pstext(), and psbar() so temporary GMT input files are saved
  directory dirname(tempdir()) instead of R working directory. These temporary
  files are later removed by psclose().

* Changed psclose() so the bounding box declaration is moved to the postscript
  file header, and GMT input files are removed from temporary directory. If
  cleanup=TRUE, the files .gmtcommands4 and .gmtdefaults4 are also removed.

* Improved r2gmt() to support # commented table header.

* Added scripts example.bat and example.sh that mimic the behaviour of the 'gmt'
  package.

* Improved help page examples.




# gmt 1.0-3 (2005-10-18)

* Improved help pages.




# gmt 1.0-2 (2005-10-02)

* Added function gmt.system() to handle the interface between R and system
  commands, passing invisible=TRUE on operating systems that support that
  argument.




# gmt 1.0-1 (2005-10-01)

* Improved performance by changing approach from shell("cmd>file") to
  ps<-system("cmd");writeLines(ps,file). Demo runs four times faster.




# gmt 1.0-0 (2005-09-28)

* Added help pages for all functions.

* Submitted to CRAN.




# gmt 0.9-1 (2005-09-27)

* Added argument 'ref' to psbar() to standardize bar height.

* Added function gmt() to initialize GMT session, making .gmthome(),
  gmtdefaults, and gmtset() obsolete. The package assumes that binaries are in
  the PATH and GMTHOME is defined.

* Added function r2gmt() to write GMT input files, making .data2gmt() and
  .file2gmt() obsolete.




# gmt 0.9-0 (2005-09-25)

* Added functions .data2gmt(), .file2gmt(), .gmthome(), deg2num(), geodist(),
  gmt(), gmtdefaults(), gmtset(), psbar(), psclose(), pscoast(), pstext(), and
  psxy().

* Added example objects demo.bar, demo.coast, demo.set, demo.text, and demo.xy.
