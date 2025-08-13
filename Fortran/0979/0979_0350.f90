use, intrinsic :: iso_fortran_env, only:input_unit
open(5,file='000.input')
read(input_unit,*) nn

if(nn .ne. 1) write(6,*) "NG"

print *,'pass'
end
