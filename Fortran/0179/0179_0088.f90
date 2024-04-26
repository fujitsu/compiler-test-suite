module mod
integer :: i /10/
contains
function ifun(j) result(ia)
character(i+j) ia     
ia='1234567890'
end function
end

use mod
character(10) ::iaa
iaa=ifun(0)
if (iaa.ne.'1234567890') print *,'err'
print *,'pass'
end
