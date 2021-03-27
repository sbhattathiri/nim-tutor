# strings
echo "normal string"
echo "string with\tescape"
echo r"C:\program files\nim"

#[
    Multiline 
    Comments
]#
echo """
      This
      is
      a
      multiline string
     """

# indentation for multi-declaration
var
    name:string = "abc"
    age,luckyNumber: int

age = 0
luckyNumber = 11

echo name
echo age
echo luckyNumber

# let and const : # The difference between let and const is: let introduces a variable that can not be re-assigned, const means "enforce compile time evaluation and put it into a data section":

# constants (no type)
const houseName = "xyz"
echo houseName

# let (no type)
let fathersName = "def"
echo fathersName
# fathersName = "xyz" # illegal



