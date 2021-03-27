var counter:int = 0
while counter < 11:
    echo counter
    counter = counter + 1


# use of inc()
var count = 0
while count < 11:
    echo count
    inc(count)


# The variable i is implicitly declared by the for loop and has the type int
for i in countup(1, 10):
  echo i

# use of iterator ..
for i in 1 .. 10:
    echo i

# iterator short cuts
var s1 = "My name is suraj"
for i in 0 .. < s1.len:
    echo s1[i]

var s2 = "My name is suraj"
for i in 1 .. < (s2.len + 1):
    echo s2[^i] # backward index



