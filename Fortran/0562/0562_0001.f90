subroutine sub
type ty
real::r1
end type
type(ty),target::tar
call pub(tar%r1)
print*,"Pass"
if (tar%r1 /= 1.50)print*,"error"
contains
subroutine pub(dmy)
real,pointer,intent(in)::dmy
if(.NOT.Associated(dmy))print*,"error"
dmy = 1.50
end subroutine
end subroutine

call sub
end
