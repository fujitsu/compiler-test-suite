function ifun(j,i) result(ia)
character(i+j) ia     
entry jfun(j,i) result(ia)
ia='1234567890'
end function

interface
function ifun(j,i) result(ia)
character(i+j) ia     
end function
function jfun(j,i) result(ia)
character(i+j) ia     
end function
end interface
character(10) ::iaa
iaa=ifun(0,10)
if (iaa.ne.'1234567890') print *,'err'
iaa=jfun(0,10)
if (iaa.ne.'1234567890') print *,'err'
print *,'pass'
end
