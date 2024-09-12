module m
type ty
  real,pointer::ptr(:)
end type

complex,target::trg(5)=[(1.2,2.4),(11.2,22.4),(13.2,23.4),(15.2,25.4),(15.2,25.4)]

type ty2
   type(ty)::obj3 = ty(trg(1:5:1)%im)
end type
integer,parameter::k=1

end module

use m
type(ty)::obj2 = ty(trg(1:5:k+1)%re)
type(ty2)::obj4
if(any(obj2%ptr.ne.[1.2,13.2,15.2]))print*,"104",obj2%ptr
if(any(obj4%obj3%ptr.ne.[2.4,22.4,23.4,25.4,25.4]))print*,"107"
print*,"PASS"
end
