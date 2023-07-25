
thislist = ["apple", "banana", "cherry"]
print(thislist)
result = ""

for item in thislist:
    result = result + item

print(result)

index = 1
for item in thislist:
    print( index, " : ", item)
    index = index + 1