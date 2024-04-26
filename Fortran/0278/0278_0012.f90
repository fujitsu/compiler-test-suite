type ty
integer*4::a
end type ty
type(ty),parameter::obj=ty(32455)
integer,parameter::constvar=LEADZ(obj%a)
if(constvar .ne. 17)print*,'100'
print*,"PASS"
end
