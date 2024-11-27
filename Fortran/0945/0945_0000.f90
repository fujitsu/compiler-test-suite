type ty
logical::a(4)
end type ty
type(ty),parameter::obj=ty([.true.,.true.,.false.,.false.])
integer,parameter::constvar=PARITY(mask=obj%a,dim=1)
integer,parameter::constvar1=PARITY(mask=obj%a)
integer,parameter::constvar2=PARITY(obj%a,dim=1)
print*,"PASS"
end
