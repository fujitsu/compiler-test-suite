type ty
integer::p
integer,pointer::q
integer,pointer::r
end type ty
type(ty),pointer::objptr
type(ty),target::objtar
integer,pointer::ptr1
integer,pointer::ptr2
integer,target::tar1=12
integer,target::tar2=13
objtar%p =20
data ptr1,objptr,ptr2 /tar1,objtar,tar2/
if(.not.associated(objptr))print*,"102",associated(objptr)
if(.not.associated(ptr1))print*,"103",associated(ptr1)
if(.not.associated(ptr2))print*,"104",associated(ptr2)
if(associated(ptr1))then
if(ptr1.ne.12)print*,"101"
endif

if(associated(ptr2))then
if(ptr2.ne.13)print*,"102"
endif
if(tar1.ne.12)print*,"101"
if(tar2.ne.13)print*,"102"
if(objtar%p.ne.20)print*,"109"
print*,"PASS"
end
