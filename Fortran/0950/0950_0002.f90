type ty
integer::a,b,c
end type ty
type(ty),parameter::obj=ty(2,3,2)
logical,parameter::constvar=DSHIFTR(obj%a,obj%b,obj%c)
print*,constvar
print*,"PASS"
end
