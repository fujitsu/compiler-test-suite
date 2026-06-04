
type ty
integer::x
integer::y
end type ty
class(ty),allocatable:: dmy
class(ty),allocatable:: dmy2
call sub(NULL(),NULL())
call sub(NULL(dmy),NULL(dmy2))
print*,"pass"
contains
subroutine sub(dmy,dmy2)
class(ty),allocatable:: dmy
class(ty),allocatable:: dmy2
allocate(dmy)
allocate(dmy2,source=dmy)
if(sizeof(dmy).ne.sizeof(dmy2))print*,sizeof(dmy),"101"
deallocate(dmy)
deallocate(dmy2)
end subroutine
end

