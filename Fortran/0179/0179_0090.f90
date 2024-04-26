interface 
function ifun(i) result(ia)
character(i) ia     
end function
end interface

character(10) ::iaa
iaa=ifun(10)
if (iaa.ne.'1234567890') print *,'err'
print *,'pass'
end
function ifun(i) result(ia)
character(i) ia     
ia='1234567890'
end function
