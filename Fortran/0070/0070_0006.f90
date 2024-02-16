subroutine s1
use,intrinsic::iso_fortran_env,only:compiler_version
write(1,*)compiler_version()
end
subroutine s2
use          ::iso_fortran_env,only:compiler_version
write(1,*)compiler_version()
end
subroutine s3
use          ::iso_fortran_env
write(1,*)compiler_version()
end
call s1
call s2
call s3
print *,'pass'
end
