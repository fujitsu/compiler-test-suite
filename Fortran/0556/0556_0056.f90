module mymod
integer:: c
class(*),pointer::a
end module

program main
use mymod
print *, "PASS"
end program
