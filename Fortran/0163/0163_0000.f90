call s1
call s2
call s3
call s4
print *,'pass'
end
subroutine s1
use ,intrinsic::iso_fortran_env
if(character_kinds(1_1)/=1) print *,'err'
if(character_kinds(1_2)/=1) print *,'err'
if(character_kinds(1_4)/=1) print *,'err'
if(character_kinds(1_8)/=1) print *,'err'
end

subroutine s2
use ,intrinsic::iso_fortran_env
if(real_kinds(1_1)/=2) print *,'err'
if(real_kinds(1_2)/=2) print *,'err'
if(real_kinds(1_4)/=2) print *,'err'
if(real_kinds(1_8)/=2) print *,'err'
if(real_kinds(2_1)/=3) print *,'err'
if(real_kinds(2_2)/=3) print *,'err'
if(real_kinds(2_4)/=3) print *,'err'
if(real_kinds(2_8)/=3) print *,'err'
if(real_kinds(3_1)/=4) print *,'err'
if(real_kinds(3_2)/=4) print *,'err'
if(real_kinds(3_4)/=4) print *,'err'
if(real_kinds(3_8)/=4) print *,'err'
if(real_kinds(4_1)/=8) print *,'err'
if(real_kinds(4_2)/=8) print *,'err'
if(real_kinds(4_4)/=8) print *,'err'
if(real_kinds(4_8)/=8) print *,'err'
if(real_kinds(5_1)/=16) print *,'err'
if(real_kinds(5_2)/=16) print *,'err'
if(real_kinds(5_4)/=16) print *,'err'
if(real_kinds(5_8)/=16) print *,'err'
end subroutine s2

subroutine s3
use ,intrinsic::iso_fortran_env
if(integer_kinds(1_1)/=1) print *,'err'
if(integer_kinds(1_2)/=1) print *,'err'
if(integer_kinds(1_4)/=1) print *,'err'
if(integer_kinds(1_8)/=1) print *,'err'
if(integer_kinds(2_1)/=2) print *,'err'
if(integer_kinds(2_2)/=2) print *,'err'
if(integer_kinds(2_4)/=2) print *,'err'
if(integer_kinds(2_8)/=2) print *,'err'
if(integer_kinds(3_1)/=4) print *,'err'
if(integer_kinds(3_2)/=4) print *,'err'
if(integer_kinds(3_4)/=4) print *,'err'
if(integer_kinds(3_8)/=4) print *,'err'
if(integer_kinds(4_1)/=8) print *,'err'
if(integer_kinds(4_2)/=8) print *,'err'
if(integer_kinds(4_4)/=8) print *,'err'
if(integer_kinds(4_8)/=8) print *,'err'
end subroutine s3
subroutine s4
use ,intrinsic::iso_fortran_env
if(logical_kinds(1_1)/=1) print *,'err'
if(logical_kinds(1_2)/=1) print *,'err'
if(logical_kinds(1_4)/=1) print *,'err'
if(logical_kinds(1_8)/=1) print *,'err'
if(logical_kinds(2_1)/=2) print *,'err'
if(logical_kinds(2_2)/=2) print *,'err'
if(logical_kinds(2_4)/=2) print *,'err'
if(logical_kinds(2_8)/=2) print *,'err'
if(logical_kinds(3_1)/=4) print *,'err'
if(logical_kinds(3_2)/=4) print *,'err'
if(logical_kinds(3_4)/=4) print *,'err'
if(logical_kinds(3_8)/=4) print *,'err'
if(logical_kinds(4_1)/=8) print *,'err'
if(logical_kinds(4_2)/=8) print *,'err'
if(logical_kinds(4_4)/=8) print *,'err'
if(logical_kinds(4_8)/=8) print *,'err'
end subroutine s4
