Module m
contains
subroutine s()
integer,save :: tar1(2)=2
TARGET ::tar1
integer :: ptr1=>tar1(1+1)
POINTER :: ptr1
if( ptr1 .ne. 2)print*,"102"
ptr1=7
if( tar1(2) .ne. 7)print*,"103"
print*,"pass"
end subroutine
end module

use m
call s()
end
    
