Version 2.1.21
==============

Highlights:

* New installer for Windows bundle. Now you can also install Thonny for all users (eg. under ``C:\Program Files (x86)``). For this you need to run the installer as administrator (right-click installer exe and select "Run as administrator"). If you run it with simple double-click, then you get old behaviour (installing for your user only).
* Bundled Python version was upgraded to 3.6.6.

See the `homepage <https://thonny.org>`_ for download links, and `wiki <https://bitbucket.org/plas/thonny/wiki/Home>`_ for installation instructions.

Whole changelog since 2.1.17:

2.1.21 (2018-07-17)
--------------------
* FIXED #471: Another problem when Thonny uses jedi 0.11 or newer

2.1.20 (2018-07-16)
---------------------
* FIXED: Problem when jedi 0.10 and parso are both installed

2.1.19 (2018-07-16)
--------------------
Updates in this version are relevant only on Windows

* FIXED #467: Error when running Thonny with pythonw on Windows (regression from 2.1.18)
* ENHANCEMENT: New Windows installer (run as administrator for all-users install)
* ENHANCEMENT: Upgraded Python to version 3.6.6 in Thonny+Python bundles 

2.1.18 (2018-06-22)
--------------------
* FIXED #450: Locals marker doesn't work with jedi 0.12


.. author:: default
.. categories:: releases
.. tags:: none
.. comments::
