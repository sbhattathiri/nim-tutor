from strutils import parseInt

let name1 = readLine(stdin)
if name1 == "":
  echo "Poor soul, you lost your name?"
elif name1 == "name":
  echo "Very funny, your name is name."
else:
  echo "Hi, ", name1, "!"

# case of else (switch case)

let name2 = readLine(stdin)
case name2
of "":
  echo "Poor soul, you lost your name?"
of "name":
  echo "Very funny, your name is name."
of "Dave", "Frank":
  echo "Cool name!"
else:
  echo "Hi, ", name2, "!"

echo "A number please: "
let n = parseInt(readLine(stdin))
case n
of 0..2, 4..7: 
  echo "The number is in the set: {0, 1, 2, 4, 5, 6, 7}"
of 3, 8: 
  echo "The number is 3 or 8"
else: discard

# when
#[
  The when statement is almost identical to the if statement, but with these differences:
  - Each condition must be a constant expression since it is evaluated by the compiler.
  - The statements within a branch do not open a new scope.
  - The compiler checks the semantics and produces code only for the statements that belong to the first condition that evaluates to true.
]#
when system.hostOS == "windows":
  echo "running on Windows!"
elif system.hostOS == "linux":
  echo "running on Linux!"
elif system.hostOS == "macosx":
  echo "running on Mac OS X!"
else:
  echo "unknown operating system"