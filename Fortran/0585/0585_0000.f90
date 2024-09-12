call test01()
contains
subroutine test01()
         complex(4),target,save::cmp1 =(11,12)
         real(4),pointer,save ::ptr11=>cmp1%re
         complex*8,target:: cmp12 =(13,14)
         real*4,pointer,save ::ptr12=>cmp1%im

type ty
  complex*8::cmp1
  complex*8::cmp2(10)
end type

type(ty),target::obj(3) = ty((10,20),10*(10,20))
real(4),pointer,save ::ptr13=>obj(1)%cmp1%re
real(4),pointer,save ::ptr14(:)=>obj%cmp2(1)%im
real(4),pointer,save ::ptr15(:)=>obj(1)%cmp2%im
if(associated(ptr11).neqv..true.)print*,"101"
if(associated(ptr12).neqv..true.)print*,"102"
if(associated(ptr14).neqv..true.)print*,"104"
if(associated(ptr15).neqv..true.)print*,"106"
if(ptr14(1).ne.200)print*,"107", ptr14(1)
if(ptr15(1).ne.200)print*,"108",ptr15(1)
if(ptr11.ne.11)print*,"109"
if(ptr12.ne.12)print*,"110"
print*,"PASS"
end
end
