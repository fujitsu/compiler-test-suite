module mymod
Type :: t1
integer :: x
class(*),pointer::a
end Type
type(t1), pointer:: xx
end module

program main
use mymod
type(t1), pointer:: objt1
allocate(objt1)
print *, "PASS"
end program
