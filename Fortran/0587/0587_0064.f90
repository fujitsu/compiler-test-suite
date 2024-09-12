module m
integer,target::t1 =30
integer,target::t2(3,3) =reshape([1,2,3,4,5,6,7,8,9],[3,3])
type ty
 integer,pointer::ptr=>t1
 integer,pointer::ptr2(:,:)=>t2(1:3:2,1:3:2)
 integer::tt2(3,3) =reshape([1,2,3,4,5,6,7,8,9],[3,3])
end type
end module
module m2
use m
type(ty),target::objt1
type ty2
 integer,pointer::ptr2(:)=>objt1%tt2(1,1:3:2)
 type(ty)::obj3
end type
end
module m3
use m2
type(ty2)::obj2
end
use m3
if(obj2%obj3%ptr.ne.30)print*,"101"
if(any(obj2%obj3%ptr2.ne.reshape([1,3,7,9],[2,2])))print*,"102"
if(any(obj2%ptr2.ne.[1,7]))print*,"103", obj2%ptr2
obj2%obj3%ptr2 = reshape([11,13,17,19],[2,2])
if(any(t2.ne.reshape([11,2,13,4,5,6,17,8,19],[3,3])))print*,"103"
print*,"PASS"
end
