integer,target::t111=1
call sub()
contains 
subroutine sub()

type ty
 integer,pointer::pt1
 integer,pointer::pt2(:,:)
 integer,pointer::pt3(:,:,:)
end type

type ty2
  type(ty)::obj(20)
end type

type(ty2)::obj3
type(ty2)::obj4(30,30)
integer::arr(3)
integer::arr2(5)
integer,pointer::ptr
integer,pointer::ptr2
integer,target,save::t1=1
integer,parameter::k=1
data (obj3%obj(i)%pt1,i=1,2) /2*t111/ 
data (obj4(1,1)%obj(i)%pt1,i=1,20) /20*t111/ 
DATA arr2(k:5:k+1),ptr ,(arr(i),i=k,2),ptr2 /1,2,3,t1,1,2,t1/

if(any(arr2.ne.[1,0,2,0,3]))print*,"102"
if(any(arr.ne.[1,2,0]))print*,"103"
if(associated(ptr).neqv..true.)print*,"103",associated(ptr)
if(associated(ptr2).neqv..true.)print*,"104",associated(ptr2)
if(ptr.ne.1)print*,"105"
if(ptr2.ne.1)print*,"103"
if(obj4(1,1)%obj(1)%pt1.ne.1)print*,"109"
if(obj3%obj(1)%pt1.ne.1)print*,"119"
if(t1.ne.1)print*,"103"
print*,"PASS"
end subroutine
end
