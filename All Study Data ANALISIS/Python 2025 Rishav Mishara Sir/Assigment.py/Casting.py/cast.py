# casting in python


a=1
print(type(a))


b= "1"
print(type(b))

c = int(b)
print(type(c))

print(a+int(b))






# all str type type can't be casted into numerical type 

name = "Nikki"
newname = int(name)

#  all numerical type can be cast into str


mynum = 26      
mynum2 =str(mynum)
print(type(mynum2))



g = 45
print(type(g))


f1 = 22.56
f2 = int(f1)
print(f2)
print(type(f2))


in1 = 26
in2 = int(in1)
print(in2)
print(type(float(in1)))


# implicit type casting
var1 = 10         # int type
var2 = 15.5        # float
print(var1+var2)




var1 = 10         
var2 = 15.5    
var3 = (var1+var2)
print(var3)
print(type(var3))