expr - tells bash that you want to validate an expression

30 + 10
>>> 30: command not found

expr 30 + 10
>>> 40

expr 30 - 10

expr 100 * 4
>>> expr: syntax error: unexpected argument
the '*' is a wild card which represents everything

expr 100 \* 4
>>> 400

mynum1=100
echo $mynum1
>>> 100
expr $mynum1 + 5
>>> 150

mynum2=88
expr $mynum1 + $mynum2
>>> 188
