Version 3.0.0b5
===============
Most new features happened in `previous betas </blog/2018/05/04/version_0_0_0_beta.html>`__, but this one still has one big new feature -- meet the Assistant!

See Thonny's Bitbucket `downloads page <https://bitbucket.org/plas/thonny/downloads/>`_ for download links or `pip install --pre thonny` into a virtual environment.

Assistant
---------
*Just like new debugger features, this feature has been supported by Raspberry Pi Foundation (https://www.raspberrypi.org/). Many thanks to them!*

Assistant is a new view in Thonny, which observes your program runs and offers help if you get an exception or if it finds something fishy in your code. It uses `Pylint <https://www.pylint.org/>`__ and `MyPy <http://mypy-lang.org/>`__ for static analysis and custom dynamic analysis for understanding the error situations better.

Here is an example:

.. image:: https://thonny.org/img/assistant.png

Many error types are not supported yet -- you may even call it a proof of concept for now. Here is where your help is needed -- if you meet a situation where Assistant could be more helpful, then click on the feedback link at the bottom of the view and let us know! You are welcome to discuss this feature also here under this blog post or in the `main forum <https://groups.google.com/forum/#!forum/thonny>`__.


All changes since 3.0.0b3
--------------------------
* NEW: When program has syntax error or crashes with an exception, Assistant pane opens and tries to help diagnose the problem. Uses Pylint, MyPy and custom dynamic analysis under the hood. (Big "Thank you!" to Raspberry Pi Foundation for the support!) 

* ENHANCEMENT: Resizing the main window doesn't mess up views' layout anymore.
* ENHANCEMENT: Better support for debugging f-strings.
* ENHANCEMENT: Nice debugger now recovers better when it is not able to understand a program.
* FIXED #496: Regression which caused Variables view to skip variables updates during "nicer debugging".
* FIXED #440: Copy&paste over a selection will now delete the text selection first (was problem for some Linuxes)
* FIXED: Removed a nasty debugging statement left into b3, which may cause a crash in the end of debugging.



.. author:: default
.. categories:: releases
.. tags:: none
.. comments::
