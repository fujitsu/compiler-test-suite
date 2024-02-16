type ty
integer::a,b,c
end type ty
type(ty),parameter::obj=ty(2,3,13)
integer,parameter::constvar=DSHIFTL(obj%a,obj%b,obj%c)
if(constvar .ne. 16384)print*,'100'
print*,"PASS"
end
