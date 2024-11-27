type ty
integer::a
end type ty
type(ty),parameter::obj=ty(32455)
logical,parameter::constvar=LEADZ(obj%a)
print*,"PASS"
end
