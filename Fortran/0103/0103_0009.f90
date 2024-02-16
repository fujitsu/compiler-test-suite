type ty
integer::constvar=DSHIFTL(b'110',3,8)
end type ty
type(ty)::obj
if(obj%constvar .ne. 1536)print*,'100'
print*,"PASS"
end
