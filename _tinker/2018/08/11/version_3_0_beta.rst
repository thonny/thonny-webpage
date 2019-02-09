Version 3.0 beta
================
Thonny 2.2 beta already brought along `many new features </blog/2018/05/04/version_2_2_0_beta.html>`_, but they kept coming, so I decided to skip 2.2 stable release and continue under version 3.0.

See Thonny's Bitbucket `downloads page <https://bitbucket.org/plas/thonny/downloads/>`_ for download links.

Debugging enhancements
----------------------
Thanks to the support from `Raspberry Pi Foundation <https://www.raspberrypi.org/>`_, Thonny now has several new debugger-related features.

The original debugger has been very useful for explaining the meaning of Python constructs, but its memory and time overhead became noticeable when making bigger steps in some programs (especially after the introduction of `stepping back in time <https://thonny.org/blog/2018/05/04/version_2_2_0_beta.html#stepping-back-in-time>`_). Although the performance has been greatly improved in 3.0 beta, larger programs would still benefit from a more efficient solution.

Thonny now has **two debug modes**. Beside the original AST-based debug mode -- **the "nicer" one (Ctrl+F5)**, there is new, traditional line-based mode -- **the "faster" one (Shift+F5)**. The new mode is not as intuitive but much more efficient. We expect that most students start with the nicer debuger and move on to the faster one when their programs grow bigger.

By default the new debugging mode still uses stacked windows for presenting the call stack. This gives good intuition about the concept, but it may become cumbersome to use. Therefore in 3.0 one can choose between **two different styles for presenting call stack**. In "Tools → Options → Debugger" you can switch to more traditional style with a separate view for presenting and switching call frames. Note that both styles can be used with both debugging modes.

Last, but not least, Thonny finally supports **breakpoints**. For using them, you need to switch on line numbers (Tools → Options → Editor). This gives you the margin, where you can add or remove breakpoints with double-clicks. Note that you don't need to use breakpoints -- if you start the debugger without breakpoints, Thonny stops before the first statement, just like it used to.

New default back-end
--------------------
Thonny 2.1 introduced automatically managed virtual environment as default back-end. The idea was to allow students start from clean slate and add packages later without worrying about the integrity of whole system. It turned out that many instructors did not like this scheme as it often made things more complex and confusing, especially in classroom setting.

**In version 3.0 the default back-end is "The same interpreter which runs Thonny"** (by the way, this was already the default setting on Raspberry Pi). This means your programs will see all Python packages that are installed to this interpreter. Instructors can now install extra packages to the central interpreter and students will see the packages without any hassle.

This change does not mean that I now consider virtual environments unimportant. As a new feature, **Thonny 3.0 offers an easy way for creating and using virtual environments** (Tools → Options → Back-end → Alternative Python 3 interpreter or virtual environment).

"A special virtual environment" back-end is still available and if you used it with your older Thonny, then Thonny 3.0 will use it as well. If you are using Thonny+Python bundle, then 3.0 will start by creating new virtual environment, because the one created for Python 3.6 does not work with Python 3.7.

More straightforward user package management
--------------------------------------------
Now when default back-end is not a virtual environment, how can users install extra packages? In 3.0 the package manager ("Tools → Manage packages...") installs to user site packages (with ``pip install --user``) when back-end is not a virtual environment. The plug-ins manager always installs to user site packages, unless Thonny itself is run from a virtual environment. 

You can also install packages outside of Thonny (either with or without ``--user``) and these will be visible in Thonny.

Basic MicroPython support built-in
----------------------------------
`MicroPython plug-ins for Thonny <https://thonny.org/blog/2018/06/05/thonny_and_micropython.html>`_ have been available for a while, but so far this topic was kept separate from the main project. Since Thonny 3.0 the core of these plug-ins will be developed and distributed as part of the ``thonny`` package. For the end-user this means that it is possible to program MicroPython devices without installing any extra plug-ins (just select "Tools → Options → Back-end → MicroPython on a generic device"). For more complete support (eg. for installing or updating firmware) there are device-specific plug-ins/back-ends available. See https://bitbucket.org/plas/thonny/wiki/MicroPython for more info.

New Windows installer
----------------------
This was already introduced in 2.1.21, but let's repeat it here as well. You can now use Windows installer for installing either for current user or for all users. See the `2.1.21 announcement <https://thonny.org/blog/2018/07/25/version_2_1_21.html>`_ for more info.

Themes
------
In case you missed `2.2 beta announcement <https://thonny.org/blog/2018/05/04/version_2_2_0_beta.html>`_ -- Thonny now has ability for changing UI and syntax themes (Tools → Options → Theme & Font).

New versions / requirements
---------------------------
* Thonny+Python bundles now come with Python 3.7.
* Python 3.4 is not supported anymore (neither for front-end nor as back-end).
* Tk 8.5 is not supported anymore.
* Mac bundle now requires macOS 10.9 or later (because it bundles 64-bit only Python). Note that you can still ``pip install thonny`` on older Macs (provided you have `Python with Tk 8.6 <https://www.python.org/download/mac/tcltk/>`_).

How to test the beta without affecting your stable Thonny?
----------------------------------------------------------
If you don't want to overwrite your current Thonny, then you can ``pip install --pre thonny`` into a virtual environment. Since 3.0, when Thonny is run from a virtual environment, it keeps all user data (eg. configuration.ini) also inside this environment. This way you don't risk messing up the configuration of your stable Thonny version and you can get rid of the beta just by deleting the virtual environment.

All new features and changes since 2.2b4
----------------------------------------
* NEW: Thonny now has two debug modes: beside original AST based debug mode (the "nicer" one, Ctrl+F5) there is now also line-based mode (the "faster" one, Shift+F5), which is not so intuitive but much more efficient. 
* NEW: Both debug modes now support breakpoints (switch on line numbers and double-click on the margin) 
* NEW: Alternative presentation for call stack (in single window, just like in most debuggers; see Tools => Options => Debugger) 
* NEW: Clicking on the links in stacktrace now shows the variables of those frames.
* NEW: You can re-run your changed program without closing it first (relevant for graphical programs).   
* NEW: Checking "Run => Dock user windows" makes your Tkinter windows stay on top and appear always on the same location. This allows tweaking your turtle programs while looking at current output.
* NEW: "View => Program arguments" opens a box where you can write the argument string for your program   
* NEW: "Tools => Options => Backend => Custom Python interpreter" now allows creating virtual environments   
* NEW: "Tools => Manage packages" now allows installing new packages with all CPython backends, not only virtual environments. If the backend is not a virtual environment it installs to user site packages (with `pip install --user`)
* NEW: Thonny now includes basic support for MicroPython (former `thonny_microbit` plug-in). See https://bitbucket.org/plas/thonny/wiki/MicroPython for more info.
* CHANGED: Upgraded Python to version 3.7.0 in Thonny+Python bundles 
* CHANGED: Dropped support for Python 3.4 (both for front-end and back-end)
* CHANGED: Dropped support for Tk 8.5. All bundles (including Mac's) now come with Tk 8.6.8
* CHANGED: Default back-end is now "Same as front-end" (was "A special virtual environment"). This makes deployment easier in classroom setting and it is simpler scheme in general. "Special virtual environment" backend may be removed in future versions.
* CHANGED: Plug-ins will be now installed to regular user site packages directory (was ~/.thonny/plugins)
* CHANGED: If Thonny (front-end) is run from a virtual environment, user directory (with configuration.ini and logs) will be .thonny under virtual environment's root directory (instead of usual ~/.thonny).  
* ENHANCEMENT: Better Windows installer (run as administrator for all-users install)
* ENHANCEMENT: thonny.exe is now digitally signed
* ENHANCEMENT: On Linux Thonny now uses native file dialogs (via zenity)   
* ENHANCEMENT: Nicer debugger can now step into your functions defined in other modules   
* ENHANCEMENT: Nicer debugger can now stop before the assignement of loop variable in for-loops   
* ENHANCEMENT: "Run to cursor" can be called by right-clicking desired line in the editor and selecting the command from context menu   
* ENHANCEMENT: Great time and memory optimizations in nicer debug mode. The ability to step back in time is not so expensive anymore.  
* ENHANCEMENT: Thonny now detects external file modifications and proposes to reload 
* ENHANCEMENT: New Windows installer (run as administrator for all-users install)
* FIXED #163: Uninstaller now correctly removes "Open with Thonny" context menu entry
* FIXED #340: Validate geometry before loading
* FIXED #358: sys.exit() in user programs doesn't show stacktrace anymore
* FIXED #363: subprocess.run causes Thonny backend to hang
* FIXED #375: Files are now saved with linebreaks suitable for current platform
* FIXED #419: logging doesn't work in user programs
* FIXED #422: Make Ctrl+C, Ctrl+V etc. work on Greek keyboard
* FIXED #440: In Linux paste over selection doesn't remove the selection
* FIXED #450: Locals marker doesn't work with jedi 0.12
* FIXED #468: Problem with changing backend interpreter
* FIXED #471: Problem when Thonny uses jedi 0.11 or newer
* FIXED #475: Heap view misbehaving on startup
* FIXED: "Run => Run to cursor" works again 
* FIXED: Thonny now honors PEP 263 style encoding markers when saving files. (UTF-8 is still the default) 
* FIXED: Problem when jedi 0.10 and parso are both installed
* FIXED: Various problems with pip GUI
* FIXED: Variables view misses events 
* FIXED: Error when last back-end was not available anymore
* FIXED: problems with pip GUI in virtualenv
* TECHNICAL: Plug-in writers can now control each import in user programs (thonny.backend.VM.add_import_handler)
* TECHNICAL: Communication messages between back-end and front-end were changed
* TECHNICAL: Thonny doesn't tweak PYTHONUSERBASE anymore to put plugins under ~/.thonny. Regular user site packages is used instead 
* TECHNICAL: Dependency to "packaging" introduced in 2.2 betas is now replaced with "setuptools" 
* TECHNICAL: Implemented ChoiceDialog 



.. author:: default
.. categories:: releases
.. tags:: none
.. comments::
