type ty
integer::a,b
end type ty
type(ty),parameter::obj=ty(3,2)
integer,parameter::constvar=SHIFTL(obj%a,obj%b)
if(constvar .ne. 12)print*,'100'
print*,"PASS"
end
