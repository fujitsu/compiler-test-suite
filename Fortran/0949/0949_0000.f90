type ty
integer::a
end type ty
type(ty),parameter::obj=ty(32205)
logical,parameter::constvar=popcnt(obj%a)
print*,constavar
end

