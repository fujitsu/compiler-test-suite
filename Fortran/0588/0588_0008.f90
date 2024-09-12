integer,parameter::m=1
type tt
  real,pointer::ptr
end type

type ty
 type(tt)::ttobj(2)
 integer,pointer::ptr
end type
type ty2
 type(ty)::obj1(2)
end type
integer,target::trg=11
complex,target::ctrg =(12.2,14.4)
type(ty)::obj(2) = [(ty([tt(ctrg%re),tt(ctrg%im)],trg),l=1,1,m),(ty([tt(ctrg%re),tt(ctrg%im)],trg),l=1,1,m)]

type(ty2)::obj3 = ty2([(ty([tt(ctrg%re),tt(ctrg%im)],trg),l=1,1,m),(ty([tt(ctrg%re),tt(ctrg%im)],trg),l=1,1,m)])
type(ty2)::obj4 
data obj4  /ty2([(ty([tt(ctrg%re),tt(ctrg%im)],trg),l=1,2,m)])/
if(associated(obj(1)%ptr).neqv..true.)print*,"201"
if(obj(1)%ptr.ne.11)print*,"101"
if(associated(obj(2)%ptr).neqv..true.)print*,"102"
if(obj(2)%ptr.ne.11)print*,"101"

if(associated(obj3%obj1(1)%ptr).neqv..true.)print*,"103"
if(obj3%obj1(1)%ptr.ne.11)print*,"103",obj3%obj1(1)%ptr
if(associated(obj4%obj1(1)%ptr).neqv..true.)print*,"104"
if(obj4%obj1(1)%ptr.ne.11)print*,"103",obj3%obj1(1)%ptr
if(associated(obj(1)%ttobj(1)%ptr).neqv..true.)print*,"301"
if(obj(1)%ttobj(1)%ptr.ne.12.2)print*,"302"
if(obj(1)%ttobj(2)%ptr.ne.14.4)print*,"402"
if(obj4%obj1(1)%ttobj(1)%ptr.ne.12.2)print*,"502"
if(obj4%obj1(1)%ttobj(2)%ptr.ne.14.4)print*,"502"

print*,"PASS"
end
