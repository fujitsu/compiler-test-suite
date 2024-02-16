type ty
integer::a,b
end type ty
type(ty),parameter::obj=ty(1,1)
integer,parameter::constvar=maskr(obj%a,obj%b)
if(constvar .ne. 1)print*,'100'
print*,"PASS"
end

