type ty
integer::a,b
end type ty
type(ty),parameter::obj=ty(1,1)
integer,parameter::constvar=maskl(obj%a,obj%b)
if(constvar .ne. -128)print*,'100'
print*,"PASS"
end

