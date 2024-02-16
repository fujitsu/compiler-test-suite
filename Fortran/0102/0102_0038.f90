type ty
integer::a,b
end type ty
type(ty),parameter::obj=ty(2,3)
logical,parameter::constvar=BGT(obj%a,obj%b)
if(constvar .neqv. .FALSE.)print*,'100'
print*,"PASS"
end

