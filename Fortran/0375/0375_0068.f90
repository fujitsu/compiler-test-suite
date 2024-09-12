subroutine foo() BIND(C, name = "_c_LOC")
use iso_c_binding
integer(c_int) :: s
end
print *,'pass'
end
