module m
integer,target,private  :: tar1=1
type ty1
   integer,pointer :: ptr1=>tar1
end type
contains
subroutine msub()
if (1.eq.1) tar1 = 2
end subroutine
end module

use m
type(ty1)::obj1
call msub()
if(obj1%ptr1 .ne. 2) print *,'ng-',obj1%ptr1
print*,"pass"
end
