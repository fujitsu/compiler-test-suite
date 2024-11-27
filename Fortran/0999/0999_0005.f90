module mod
integer i
end
use mod,ONLY:j=>i
use mod 
do i=1,10
j=1000
end do
end 
