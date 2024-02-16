subroutine s1
use, intrinsic :: iso_fortran_env, only:input_unit
integer :: input
read(input_unit,*) input
end
print *,'pass'
end
