type ty
integer::num(5)
integer,pointer::ptr(:)
end type

integer,target::trg(5)=[1,2,3,4,5]
integer,parameter::k =1
integer,parameter::trg2(5)=[1,2,3,4,5]
type(ty)::obj1
type(ty)::obj2 = ty(trg2(1:5:k),trg(1:5:k))
type ty2
   type(ty)::obj3
end type
data obj1 /ty(trg2(1:5:1), trg(1:5:k+1))/

type(ty2)::obj4

data obj4%obj3 /ty(trg2(1:5:1),trg(1:5:1))/

if(any(obj1%num.ne.[1,2,3,4,5]))print*,"101"
if(any(obj1%ptr.ne.[1,3,5]))print*,"102"
if(any(obj2%num.ne.[1,2,3,4,5]))print*,"103"
if(any(obj2%ptr.ne.[1,2,3,4,5]))print*,"104"
if(any(obj4%obj3%num.ne.[1,2,3,4,5]))print*,"105"
if(any(obj4%obj3%ptr.ne.[1,2,3,4,5]))print*,"107"
print*,"PASS"
end
