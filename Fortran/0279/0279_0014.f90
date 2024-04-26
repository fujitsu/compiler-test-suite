type ty
integer::a
end type ty
type(ty),parameter::obj=ty(32455)
integer,parameter::constvar=popcnt(obj%a)
if(constvar .ne. 11)print*,'100'
print*,"PASS"
end

