:: hide input commands
@echo off

:: compile actual output
tweego -o index.html src

:: compile proofread edition
tweego -o proofread.html -f paperthin-1 src

:: zip up output with asset and proofread edition
tar -a -c -v -f lianhua.zip index.html assets proofread.html

:: wait for user
pause
