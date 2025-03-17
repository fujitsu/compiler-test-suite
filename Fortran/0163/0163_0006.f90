call s1
call s2
call s3
call s4
print *,'pass'
end
subroutine s1
use ,intrinsic::iso_fortran_env
if(any(character_kinds([1_1])/=[1])) print *,'err'
if(any(character_kinds([1_2])/=[1])) print *,'err'
if(any(character_kinds([1_4])/=[1])) print *,'err'
if(any(character_kinds([1_8])/=[1])) print *,'err'
end

subroutine s2
use ,intrinsic::iso_fortran_env
if(any(real_kinds([1_1])/=[2])) print *,'err'
if(any(real_kinds([1_2])/=[2])) print *,'err'
if(any(real_kinds([1_4])/=[2])) print *,'err'
if(any(real_kinds([1_8])/=[2])) print *,'err'
if(any(real_kinds([2_1])/=[3])) print *,'err'
if(any(real_kinds([2_2])/=[3])) print *,'err'
if(any(real_kinds([2_4])/=[3])) print *,'err'
if(any(real_kinds([2_8])/=[3])) print *,'err'
if(any(real_kinds([3_1])/=[4])) print *,'err'
if(any(real_kinds([3_2])/=[4])) print *,'err'
if(any(real_kinds([3_4])/=[4])) print *,'err'
if(any(real_kinds([3_8])/=[4])) print *,'err'
end subroutine s2

subroutine s3
use ,intrinsic::iso_fortran_env
if(any(integer_kinds([1_1])/=[1])) print *,'err'
if(any(integer_kinds([1_2])/=[1])) print *,'err'
if(any(integer_kinds([1_4])/=[1])) print *,'err'
if(any(integer_kinds([1_8])/=[1])) print *,'err'
if(any(integer_kinds([2_1])/=[2])) print *,'err'
if(any(integer_kinds([2_2])/=[2])) print *,'err'
if(any(integer_kinds([2_4])/=[2])) print *,'err'
if(any(integer_kinds([2_8])/=[2])) print *,'err'
if(any(integer_kinds([3_1])/=[4])) print *,'err'
if(any(integer_kinds([3_2])/=[4])) print *,'err'
if(any(integer_kinds([3_4])/=[4])) print *,'err'
if(any(integer_kinds([3_8])/=[4])) print *,'err'
if(any(integer_kinds([4_1])/=[8])) print *,'err'
if(any(integer_kinds([4_2])/=[8])) print *,'err'
if(any(integer_kinds([4_4])/=[8])) print *,'err'
if(any(integer_kinds([4_8])/=[8])) print *,'err'
end subroutine s3
subroutine s4
use ,intrinsic::iso_fortran_env
if(any(logical_kinds([1_1])/=[1])) print *,'err'
if(any(logical_kinds([1_2])/=[1])) print *,'err'
if(any(logical_kinds([1_4])/=[1])) print *,'err'
if(any(logical_kinds([1_8])/=[1])) print *,'err'
if(any(logical_kinds([2_1])/=[2])) print *,'err'
if(any(logical_kinds([2_2])/=[2])) print *,'err'
if(any(logical_kinds([2_4])/=[2])) print *,'err'
if(any(logical_kinds([2_8])/=[2])) print *,'err'
if(any(logical_kinds([3_1])/=[4])) print *,'err'
if(any(logical_kinds([3_2])/=[4])) print *,'err'
if(any(logical_kinds([3_4])/=[4])) print *,'err'
if(any(logical_kinds([3_8])/=[4])) print *,'err'
if(any(logical_kinds([4_1])/=[8])) print *,'err'
if(any(logical_kinds([4_2])/=[8])) print *,'err'
if(any(logical_kinds([4_4])/=[8])) print *,'err'
if(any(logical_kinds([4_8])/=[8])) print *,'err'
end subroutine s4
