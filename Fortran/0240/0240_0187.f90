use, intrinsic :: iso_fortran_env, only : input_unit
integer :: input
if (1.eq.2) read ( input_unit, * ) input

if (input_unit.ne.5) print *,'err'
print *,'pass'
end
