program main

type ty
 integer::i
end type

class(ty),allocatable,target::o1
type(ty),allocatable,target::o2
class(*),allocatable,target::o3

allocate(o1)
allocate(o2)
o1%i=2
o2=ty(2)
allocate(o3,source=o1)
deallocate(o3)
allocate(o3,source=o2)
print*,'PASS'
end
