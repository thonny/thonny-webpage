Version 2.0.7
=============

Happy New Year!

New year comes with new Thonny version. There are no new features this time, but here's the list of bugs fixed since 2.0.3:

* Making font size too small would crash Thonny.
* Configuration file was occasionally getting corrupted (for mysterious reasons, maybe a bug in Python's ``configparser``). 2.0.4 added a workaround for this ...
* ... which introduced another bug: configuration file wasn't created in new installations. 
* Shift-Tab wasn't working in some cases.
* System shell for built-in Python did not include Scripts directory in Windows PATH.
* ``from __future__ import`` crashed the debugger.
* There was a bug in Linux installer in short-lived 2.0.6.



.. author:: default
.. categories:: releases
.. tags:: none
.. comments::
