type ty
integer::a
end type ty
type(ty),parameter::obj=ty(32455)
integer,parameter::constvar=poppar(obj%a)
if(constvar .ne. 1)print*,'100'
print*,"PASS"
end

