module mod
contains
function ifun() result(ia)
integer :: ia(10)
ia=(/1,2,3,4,5,6,7,8,9,10/)
ia=ia
end function
end

use mod
integer :: iaa(10)
iaa=ifun()
iaa=iaa
print *,'pass'
end
