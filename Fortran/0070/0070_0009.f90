subroutine s1
use,intrinsic::iso_fortran_env,only:compiler_options
write(1,*)compiler_options()
end
subroutine s2
use            iso_fortran_env,only:compiler_options
write(1,*)compiler_options()
end
call s1
call s2
print *,'pass'
end
