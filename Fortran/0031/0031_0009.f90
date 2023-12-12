module m
integer,target,private  :: tar1=2
type ty1
   integer,pointer :: ptr1=>tar1
end type
end module

use m
type(ty1)::obj1
if(obj1%ptr1 .ne. 2) print*,obj1%ptr1
print *,'OK'
end
