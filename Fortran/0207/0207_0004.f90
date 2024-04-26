module m
integer :: tar1_array(100,100,100,100,4)
integer,target,private  :: tar1(100,100,100,100,4)
type ty1
   integer,pointer :: ptr1
end type
end module

use m
type(ty1)::obj1
print*,"pass"
end
