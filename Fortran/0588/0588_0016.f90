type ty
 integer,pointer::ptr
 integer,pointer::ptr2
end type
integer,target::trg =20
integer,target::trg2 =30

type(ty)::obj = ty(trg,trg2)

type(ty)::obj2

data obj2 /ty(NULL(),NULL())/

if(associated(obj%ptr).neqv..true.)print*,"101"
if(associated(obj%ptr2).neqv..true.)print*,"201"
if(obj%ptr.ne.20)print*,"203"
if(obj%ptr2.ne.30)print*,"204"
if(associated(obj2%ptr).neqv..false.)print*,"107"
if(associated(obj2%ptr2).neqv..false.)print*,"208"
print*,"PASS"
end

