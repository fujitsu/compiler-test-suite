type ty
integer::a
end type ty
type(ty),parameter::obj=ty(322)
logical,parameter::constvar=poppar(obj%a)
print*,constvar
end

