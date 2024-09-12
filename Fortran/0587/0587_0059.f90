module m
integer,target::t1 =30
character*3,target::ch ='abc'
type ty1
 integer,pointer::ptr=>t1
 integer::t11 =32
end type
contains 
subroutine sub()
 type(ty1)::obj
 t1 =49
 if(obj%ptr.ne.49)print*,"901"
end
end module

module m2
integer,target::t1 =40
type ty2
 integer,pointer::ptr=>t1
 integer::t11 =33
end type
contains 
subroutine sub2()
 type(ty2)::obj
 t1 =59
 if(obj%ptr.ne.59)print*,"902"
end
end
module m3
use m2
use m
 type(ty1),target::obj
 type(ty2),target::obj2
type ty3
  integer,pointer::ptr4=>obj%t11
  integer,pointer::ptr5=>obj2%t11
  character*2,pointer::ptr6=>ch(1:2)
end type
contains 
subroutine sub3()
 type(ty2)::obj
 if(obj%ptr.ne.69)print*,"903"
end


end
use m3
type(ty1)::obj11
type(ty2)::obj12
type(ty3)::obj13
call sub()
call sub2()
if(obj11%ptr.ne.49)print*,"101"
if(obj12%ptr.ne.59)print*,"102"
if(obj13%ptr4.ne.32)print*,"103"
if(obj13%ptr5.ne.33)print*,"104"
if(obj13%ptr6.ne.'ab')print*,"109"
if(obj%ptr.ne.49)print*,"105"
if(obj2%ptr.ne.59)print*,"106"
obj12%ptr =69
call sub3()
print*,"PASS"
end
