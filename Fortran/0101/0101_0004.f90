type ty
integer::constvar=MERGE_BITS(b'110',15,z'15')
integer::constvar1=MERGE_BITS(-13,15,22)
end type ty
type(ty)::obj
if(obj%constvar .ne. 14)print*,'100'
if(obj%constvar1 .ne. 27)print*,'101'
print*,"PASS"
end
