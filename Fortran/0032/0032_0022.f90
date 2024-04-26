module m
integer,target,private  :: tar1(101,102,103)=2
integer,target,private  :: tar2(101,102,103)=2
integer,target,private  :: tar3(101,102,103)=2
integer,target,private  :: tar4(101,102,103)=2
type ty1
   integer,pointer :: ptr1=>tar1(1,2,3)
end type
end module

use m
integer,target  :: tar1a(101,102,103)
integer,target  :: tar2a(101,102,103)
integer,target  :: tar3a(101,102,103)
integer,target  :: tar4a(101,102,103)
integer  :: tar1b(101,102,103)
integer  :: tar2b(101,102,103)
integer  :: tar3b(101,102,103)
integer  :: tar4b(101,102,103)
type(ty1)::obj1
if(obj1%ptr1 .ne. 2) print*,obj1%ptr1
print*,"pass"
end
