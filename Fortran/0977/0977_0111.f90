use ,intrinsic::iso_fortran_env,only:input_unit
if (1==2) then
read(input_unit,*) nn
endif
call ss
print *,'pass'
end
subroutine ss
use ,intrinsic::iso_fortran_env
if (character_storage_size/=8)write(6,*) "NG"
 if( error_unit/=0)write(6,*) "NG"
 if( file_storage_size/=8)write(6,*) "NG"
 if( input_unit/=5)write(6,*) "NG"
 if( iostat_end/=-1)write(6,*) "NG"
 if( iostat_eor/=-2)write(6,*) "NG"
 if( numeric_storage_size/=32)write(6,*) "NG"
 if( output_unit/=6)write(6,*) "NG"
end
