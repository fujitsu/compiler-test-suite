module mod
end

use mod
integer :: iaa(10)
iaa=ifun()
do i=1,10
if (iaa(i).ne.i) print *,'err'
end do
print *,'pass'
contains
function ifun() result(ia)
integer :: ia(10)
ia=(/1,2,3,4,5,6,7,8,9,10/)
end function

end
