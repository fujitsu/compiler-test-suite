type ty
integer::a,b
end type ty
type(ty),parameter::obj=ty(7,2)
integer,parameter::constvar=SHIFTR(obj%a,obj%b)
if(constvar .ne. 1)print*,'100'
print*,"PASS"
end
