call s1
call s2
print *,'pass'
contains
subroutine s1
use iso_fortran_env
if(character_storage_size/=8) call err(1)
if(error_unit/=0) call err(2)
if(file_storage_size/=8) call err(3)
if(input_unit/=5) call err(4)
if(iostat_end/=-1) call err(5)
if(iostat_eor/=-2) call err(6)
if(numeric_storage_size/=32) call err(7)
if(output_unit/=6) call err(8)
end subroutine
subroutine s2
use iso_fortran_env,a1=>character_storage_size,a2=>error_unit,&
a3=>file_storage_size,a4=>input_unit,a5=>iostat_end,a6=>iostat_eor,&
a7=>numeric_storage_size,a8=>output_unit
if(a1/=8) call err(11)
if(a2/=0) call err(12)
if(a3/=8) call err(13)
if(a4/=5) call err(14)
if(a5/=-1) call err(15)
if(a6/=-2) call err(16)
if(a7/=32) call err(17)
if(a8/=6) call err(18)
end subroutine
end
subroutine err(i)
integer,intent(in)::i
print *,'err',i
end
