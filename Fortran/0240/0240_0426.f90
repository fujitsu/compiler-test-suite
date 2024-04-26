call s
print *,'pass'
end
subroutine s
use, intrinsic :: iso_fortran_env, only:input_unit,output_unit
integer :: input
read(input_unit,*) input
write(output_unit,*) input
end
