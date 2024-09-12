call sub()
end
subroutine sub()

integer,target::t1=20
type ty
SEQUENCE
integer,pointer::p1
end type
type(ty)::obj
  data obj /ty(t1)/
  common /abc/ obj,t1
if(associated(obj%p1).neqv..true.)print*,"101"
if(obj%p1.ne.20)print*,"102"
print*,"pass"
end

