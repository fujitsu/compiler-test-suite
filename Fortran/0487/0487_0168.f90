subroutine s1()
use,intrinsic::iso_fortran_env 
integer:: a(len( compiler_version( )) )

if (size( a ) < 2 ) print *,102
end
call s1()
print *,'pass'
end
