module m
integer,target,private  :: tar1=2
type ty1
   integer,pointer :: ptr1=>tar1
end type
contains
subroutine s1
if(tar1 .ne. 2) print*,tar1
end subroutine
end module

use m
call s1
print *,'OK'
end
