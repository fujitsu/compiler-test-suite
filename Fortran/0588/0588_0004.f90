module m
type ty
  integer::num(5)
  real,pointer::ptr(:)
end type

complex,target::trg(5)=[(1.2,2.4),(11.2,22.4),(13.2,23.4),(15.2,25.4),(15.2,25.4)]
integer,parameter::k =1
integer,parameter::trg2(5)=[1,2,3,4,5]

end module

use m
type(ty)::obj1
type(ty)::obj2 = ty(trg2(1:5:k),trg(1:5:k)%re)
type ty2
   type(ty)::obj3
end type
data obj1 /ty(trg2(1:5:1), trg(1:5:k+1)%re)/

type(ty2)::obj4

data obj4%obj3 /ty(trg2(1:5:1),trg(1:5:1)%im)/

if(any(obj1%num.ne.[1,2,3,4,5]))print*,"101"
if(any(obj1%ptr.ne.[1.2,13.2,15.2]))print*,"102"
if(any(obj2%num.ne.[1,2,3,4,5]))print*,"103"
if(any(obj2%ptr.ne.[1.2,11.2,13.2,15.2,15.2]))print*,"104"
if(any(obj4%obj3%num.ne.[1,2,3,4,5]))print*,"105"
if(any(obj4%obj3%ptr.ne.[2.4,22.4,23.4,25.4,25.4]))print*,"107"
print*,"PASS"
end
