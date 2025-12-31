@echo off
echo ===============================
echo TASK 8: Fetch Pull Request Data
echo ===============================

REM Fetch pull request info and save to file
curl https://api.github.com/repos/chatran-cloud/calculator/pulls > bug-fix-revert

REM Show file content
echo.
echo ----- bug-fix-revert CONTENT -----
type bug-fix-revert
echo ----------------------------------

REM Add, commit, and push
git add bug-fix-revert
git commit -m "Add pull request verification output"
git push

echo.
echo TASK 8 COMPLETED
pause
