module m1
implicit real(n)
interface gen
  procedure real_sub,int_sub
end interface
contains
subroutine s()
block
 n=1
 call gen(n)
end block
end subroutine
subroutine real_sub(r)
if (r/=1.0) print *,1
end subroutine
subroutine int_sub(i)
print *,2,i
end subroutine
end
use m1
call s
print *,'pass'
end
