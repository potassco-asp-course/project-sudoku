# Sudoku Project

You can find the instructions of the project in the file [sudoku.ipynb](sudoku.ipynb).

To submit your solution, please modify the file [sudoku.lp](asp/sudoku.lp) of the directory [asp](asp) with your encoding.

Every time you push a new commit, your solution will be tested automatically.
The timeout per instance is `100` seconds, and
the actual command call for the test is:
* ``python asp/test.py -e asp/sudoku.lp -t 100``

For help, type `python asp/test.py --help`.

The script was developed for Python 3.8.

After a few minutes you will be able to see the result of the test in the **Actions** tab:
* Click on the test/workflow run.
* Scroll to the section "grade/grade summary".
* Check the result in the table ("PASS" or "FAIL").

In case of a "FAIL", click on "Failure details" to see the test outcome for each instance:
* "success" (correct answer),
* "failure" (wrong answer),
* "timeout" (no solution found before the time runs out), or
* "error" (clingo error).
