character(LEN=4)::ch ="AB"
call sub
contains
subroutine sub
type ty
integer::ii(3)
end type
type(ty)::obj
obj = ty((/10,20,30/))
open(NEWUNIT=obj%ii(2),STATUS='SCRATCH')
write(obj%ii(2),*)"xnxn"
rewind obj%ii(2)
read(obj%ii(2),*)ch
if (ch /='xnxn')print*,"error:101"
print*,"pass"
end subroutine
end
