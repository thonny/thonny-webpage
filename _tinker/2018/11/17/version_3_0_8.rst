Version 3.0.8
=============
This is a bug-fix release.

Changes since 3.0.5:

3.0.8 (2018-11-15)
------------------
* FIXED #597: The directory with Python scripts may not be in path for executing system commands from shell
* FIXED: Make executing shell commands compatible with Python 3.5
* FIXED: Make MyPy support compatible with older MyPy versions
* FIXED: Make turtle.pyi compatible with Python 3.5 and remove Windows linebreaks
* FIXED: MyPy error col offset

3.0.7 (2018-11-14)
------------------
* FIXED #592: MyPy doesn't work when cwd == sys.prefix
* FIXED #593: No-message exceptions crash the Assistant
* FIXED #595: Running system commands causes an error
* FIXED #596: Arguments are ignored when running system commands from shell in Posix

3.0.6 (2018-11-13)
------------------
* FIXED #538: Turtle programs may give false warnings (Typeshed stubs were not packaged)
* FIXED #586: Import interception mechanism fails for some modules
* FIXED #591: Assistant fails when filename is missing from error info


.. author:: default
.. categories:: releases
.. tags:: none
.. comments::
