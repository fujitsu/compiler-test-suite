type ty
integer*4::a,b,c
end type ty
type(ty),parameter::obj=ty(2,3,13)
integer*4,parameter::constvar=DSHIFTR(obj%a,obj%b,obj%c)
if(constvar .ne. 1048576)print*,'100'
print*,"PASS"
end
