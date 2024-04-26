type ty
integer::a,b
end type ty
type(ty),parameter::obj=ty(32425_4,4)
integer,parameter::constvar=SHIFTA(obj%a,obj%b)
if(constvar .ne. 2026)print*,'100'
print*,"PASS"
end
