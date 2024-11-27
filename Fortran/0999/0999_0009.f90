module mod
integer i
end
use mod ,j=>i
use mod
do i=1,10
 j=1
end do
end
