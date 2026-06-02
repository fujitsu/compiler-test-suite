
type ty
integer::x
integer::y
end type ty
call sub(NULL(),NULL())
print*,"pass"
contains
subroutine sub(dmy,dmy2)
type(ty)::obj
type(ty),allocatable:: dmy
type(ty),allocatable:: dmy2
allocate(dmy)
allocate(dmy2,source=dmy)
if(sizeof(dmy).ne.sizeof(obj))print*,sizeof(dmy),"101"
if(sizeof(dmy2).ne.sizeof(obj))print*,sizeof(dmy2),"101"
dmy2%x =10
dmy2%y =20
deallocate(dmy)
deallocate(dmy2)
end subroutine
end

