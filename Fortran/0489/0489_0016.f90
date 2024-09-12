call test01()
contains
subroutine test01()

type ty
  complex*8::cmp1
  complex*8::cmp2(10)
end type

type(ty),target::obj(3) = ty((10,20),10*(10,20))
real(4),pointer,save ::ptr14(:)=>obj%cmp2(1)%im
if(ptr14(1).ne.200)print*,"107", ptr14(1)
print*,"pass"
end
end
