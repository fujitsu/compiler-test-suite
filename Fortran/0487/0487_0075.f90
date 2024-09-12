type ty
  complex*8::cmp2(2)
end type

type(ty),target::obj(2) = ty( (10,20))
real(4),pointer,save ::ptr14(:)=>obj%cmp2(1)%im
if(ptr14(1).ne.20)print*,"107", ptr14(1)
print*,"pass"
end
