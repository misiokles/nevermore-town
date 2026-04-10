@echo off
set "baseDir=%~dp0"
for /r "%baseDir%" %%f in (*.bmp) do (
    echo Converting "%%f" to PNG...
    magick "%%f" -define png:preserve-colormap=true -alpha off "%%~dpnf.png"
	del /q "%%f" >nul 2>nul
)
echo Conversion completed!
pause