Version 2.2.0 beta
==================
Version 2.2 contains several new features and some bug-fixes (listed below). This post will be updated during the beta phase to let you know about the progress.

See Thonny's Bitbucket `downloads page <https://bitbucket.org/plas/thonny/downloads/>`_ for download links.

Stepping back in time
---------------------
One of the new features in 2.2 is possibility to step back in time during debugging. This comes in handy when you are debugging with big steps (step over) and accidentally step over an interesting part in code. Instead of starting from scratch again, you can now issue the command "Run -> Step back" which brings the visual represetation of the program back to the state as it was before last debugger command. From there you can choose to continue with small steps (step into). You can make as many steps back as required and you can go back and forward as many times as you wish.

.. raw:: html

    <p>Stepping back was implemented by Alar Leemet as part of his Bachelor thesis. <strong>Please give him <a href="https://goo.gl/forms/huwubX2XQEZRiQC42">feedback about this feature</a></strong>!</p>

2.2.0b4 (2018-06-05)
--------------------
* FIXED: Couldn't open menus with None backend

2.2.0b3 (2018-06-05)
--------------------
* FIXED #425: Too big automatic scaling
* FIXED #427: Can't run files with spaces in filename
* FIXED: Fixed a bug when debugging and encountering an exception (by Alar Leemet)
* ENHANCEMENT: Show indicator about stepping in the past in the text of editor tabs
* ENHANCEMENT: Added Thonny version guards for installing plug-ins
* EXPERIMENTAL: Preliminary support for running system commands in Thonny shell (eg. `!ls` or `!dir`)
* TECHNICAL: thonny.exe in Windows bundle is now signed
* TECHNICAL: Delay starting of Runner until UI is shown
* TECHNICAL: Various enhancements to support MicroPython plug-ins (https://bitbucket.org/plas/thonny-micropython)

2.2.0b2 (2018-05-04)
--------------------
* FIXED: Options dialog crashes when Variables view hasn't been created yet

2.2.0b1 (2018-05-04)
--------------------
* NEW: Added support for stepping back in time during debugging (Run => Step back) by Alar Leemet. If you accidentally stepped over an interesting part of code, then now you can step back and step into.
* NEW: Added support for UI and syntax theming (https://bitbucket.org/plas/thonny/wiki/Theming)
* NEW: Added several built-in dark themes
* NEW: Added support for display scaling / high-DPI screens (Tools => Options => General)
* NEW: Added closing buttons to the tabs of all views 
* NEW: Added support for (CPython) back-end plug-ins (https://bitbucket.org/plas/thonny/wiki/Plugins)
* NEW: Current editor line can be highlighted (Tools => Options => Editor)
* NEW: Thonny can be started in simple mode (https://bitbucket.org/plas/thonny/wiki/Modes) 
* NEW: Variables view now allows viewing variables from other modules beside __main__  (Tools => Options => General)
* CHANGED: Dropped support for Python 3.4 (both for front-end and back-end)
* CHANGED: Reorganized back-end configuration ("Tools => Options => Back-end" instead of "Tools => Options => Interpreter")
* CHANGED: The roles of Interrupt and Stop commands are now more clear: Stop always restarts the backend and Interrupt only tries to interrupt 
* CHANGED: Editing the running program doesn't interrupt it anymore.  
* CHANGED: Object inspector now shows attributes and object overview on different tabs
* CHANGED: Can't set thonny.THONNY_USER_DIR directly in customize.py anymore (https://bitbucket.org/plas/thonny/wiki/DeploymentOptions)
* CHANGED: For plug-in writers: Unified early and late plug-ins (load_early_plugin should be renamed to load_plugin)
* CHANGED: For plug-in writers: get_workbench and get_runner moved from thonny.globals to thonny
* FIXED #358: Hide the stacktrace of SystemExit
* FIXED #368: "Open system shell" doesn't work in Xfce (fix by Miro Hrončok) 
* FIXED #370: Made zooming with Ctrl++ / Ctrl+- work on the numpad on Linux
* FIXED #372: Now it's possible to specify a link as backend interpreter (fix by Miro Hrončok)
* FIXED #396: exec causes range marker to crash
* FIXED #403: Window width may become negative
* TECHNICAL: Changed the location and sharing of backend.py, common.py, ast_utils.py
* TECHNICAL: Cleaner approach for sharing jedi with the back-end
* TECHNICAL: Package manager now uses pypi.org instead of pypi.python.org
* TECHNICAL: Several changes in Runner and BackendProxy interface
* TECHNICAL: Saving an editor now forces writing to disk (see https://learn.adafruit.com/adafruit-circuit-playground-express/creating-and-editing-code#1-use-an-editor-that-writes-out-the-file-completely-when-you-save-it)




.. author:: default
.. categories:: releases
.. tags:: none
.. comments::