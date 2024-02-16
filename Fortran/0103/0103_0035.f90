type ty
integer*4::constvar=DSHIFTR(b'110',3_4,8)
end type ty
type(ty)::obj
if(obj%constvar .ne. 100663296)print*,'100'
print*,"PASS"
end
