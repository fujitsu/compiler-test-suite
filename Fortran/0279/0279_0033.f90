type ty
integer::a,b
end type ty
type(ty),parameter::obj=ty(126,1)
integer,parameter::constvar=storage_size(obj%a,obj%b)
if(constvar .ne. storage_size(obj%a,obj%b))print*,'100'
print*,"PASS"
end

