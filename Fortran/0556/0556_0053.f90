module mymod
Type :: t1
integer :: x
end Type
class(t1),pointer::a
end module

program main
use mymod
type(t1), pointer:: objt1
allocate(objt1)
print *, "PASS"
end program

