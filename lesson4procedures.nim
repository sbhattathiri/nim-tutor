#[
A procedure that returns a value has an implicit result variable declared 
that represents the return value.
The result variable is already implicitly declared at the start of the function, 
so declaring it again with 'var result', for example,
 would shadow it with a normal variable of the same name. 
The result variable is also already initialized with the type's default value
]# 

proc sumTillNegative(nums: varargs[int]): int =
    for num in nums:
        if num < 0:
            return
        result = result + num


echo sumTillNegative(3, 4, 5) # echos 12
echo sumTillNegative(3, 4 , -1 , 6) # echos 7


#[
    A procedure that does not have any return statement and does not use the special result variable 
    returns the value of its last expression
]#
proc helloWorld(): string =
    "Hello, World!"

echo helloWorld()

#[
    Encapsulation is also supported, not by conventions such as prepending the name with underscores but by annotating a procedure with *, which exports it and makes it available for use by modules.
]#
proc multiplyBy100*(num: int): int =
    num * 100

echo multiplyBy100(5)