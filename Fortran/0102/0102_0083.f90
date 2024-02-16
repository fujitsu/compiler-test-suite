type ty
integer::a,b
end type ty
type(ty),parameter::obj=ty(2,3)
logical,parameter::constvar=BLT(obj%a,obj%b)
if(constvar .neqv. .TRUE.)print*,'100'
print*,"PASS"
end 
