use, intrinsic :: iso_fortran_env, only:input_unit
integer :: input
if (1.eq.2) read(input_unit,*) input
print *,"pass"
end
