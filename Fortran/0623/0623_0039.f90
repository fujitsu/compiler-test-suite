use, intrinsic :: iso_fortran_env, only:input_unit
integer :: n
if (1.eq.2)read(input_unit,*) n
print *,"pass"
end
