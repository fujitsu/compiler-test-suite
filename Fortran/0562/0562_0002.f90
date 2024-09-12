subroutine sub
type ty1
real::r1
end type
type ty2
type(ty1)::obj1
end type
type ty3
type(ty2)::obj2
end type
type(ty3),target::tar
call pub(tar%obj2%obj1%r1)
print*,"Pass"
if (tar%obj2%obj1%r1 /= 5.50)print*,"error"
contains
subroutine pub(dmy)
real,pointer,intent(in)::dmy
if(.NOT.Associated(dmy))print*,"error"
dmy = 5.50
end subroutine
end subroutine

call sub
end
