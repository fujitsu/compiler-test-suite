subroutine s1
use,intrinsic::iso_c_binding
write(1,*)c_long_double
write(1,*)c_long_double_complex
end
call s1
print *,'pass'
end
