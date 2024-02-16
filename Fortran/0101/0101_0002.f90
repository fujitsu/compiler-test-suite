type ty
integer::a,b,c
end type ty
type(ty),parameter::obj=ty(13,18,22)
integer,parameter::constvar=MERGE_BITS(obj%a,obj%b,obj%c)
if(constvar .ne. 4)print*,'100'
print*,"PASS"
end
