module m
integer,target,private  :: tar1=2
   integer,pointer :: ptr1=>tar1
end module

use m
if(ptr1 .ne. 2) print*,101
print*,"pass"
end
