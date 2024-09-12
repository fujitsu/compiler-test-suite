subroutine sub()

type ty
 integer::i
end type

class(ty),allocatable::o1
type(ty),allocatable::o2
class(*),allocatable::o3

allocate(o1)
allocate(o2)

o1%i=2
o2%i=2

allocate(o3,source=o2)
deallocate(o3)
allocate(o3,source=o1)
print*,'PASS'
end subroutine

call sub()
end
