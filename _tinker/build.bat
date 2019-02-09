set PATH=C:\Py3\Scripts;%PATH%

@rem RD /S /Q ..\blog
@rem RD /S /Q blog

tinker --build
xcopy blog\html ..\blog /y /s /i /q

pause