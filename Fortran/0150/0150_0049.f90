module m1
 contains
   pure function compiler_version() result(k)
   k=2
   end function
end
subroutine s1
use m1
implicit none
integer:: x(compiler_version())
if (size(x)/=2) print *,1
end
call s1
print *,'pass'
end
