Version 3.0.1
=============

This is the first published stable release of Thonny 3.0.

Thonny 3.0 has many new features and most of them have been introduced already in previous posts or explained elsewhere:

* Syntax and UI themes (https://bitbucket.org/plas/thonny/wiki/Theming)
* Breakpoints and different debug modes (https://thonny.org/blog/2018/08/11/version_3_0_beta.html)
* Core built-in support for MicroPython (https://bitbucket.org/plas/thonny-micropython)
* Assistant view which performs static analysis on your code and tries to explain error messages (https://thonny.org/blog/2018/09/01/version_3_0_0b5.html)
* Stepping back while debugging (https://thonny.org/blog/2018/05/04/version_2_2_0_beta.html)
* New Windows installer allows installing Thonny for all users (https://thonny.org/blog/2018/07/25/version_2_1_21.html)

**Development of several features were suggested and supported by** `Raspberry Pi Foundation <https://www.raspberrypi.org/>`__. **Many thanks to them!**

There are some important changes in the requirements:

* Minimum supported Python version (both for the front-end and back-end) is Python 3.5
* Minimum supported Tk version is 8.6 (recent Python versions published at https://www.python.org come with Tk 8.6)
* macOS bundle requires at least macOS 10.9. For older macs you need to `install Python (with Tk 8.6) and Thonny separately <https://bitbucket.org/plas/thonny/wiki/SeparateInstall>`_.
* By default Thonny runs user programs with the same interpreter, which runs the front-end (https://thonny.org/blog/2018/08/11/version_3_0_beta.html, section "New default back-end")
* pip GUI (Tools => Manage packages) now installs packages to different location (https://thonny.org/blog/2018/08/11/version_3_0_beta.html, section "More straightforward user package management")

All new features and changes are listed in the changelog: https://bitbucket.org/plas/thonny/src/master/CHANGELOG.rst

Big thank you to everybody who have helped Thonny so far!

You can find download links from `Thonny's homepage <https://thonny.org>`_.

.. author:: default
.. categories:: releases
.. tags:: none
.. comments::
