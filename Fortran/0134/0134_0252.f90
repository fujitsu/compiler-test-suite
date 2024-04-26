module m1
  integer,allocatable::k
 contains
   subroutine s(n)
    n=k
   end subroutine
end
subroutine ss
use m1
k=1
call s(kk)
if (kk/=1)print *,101,kk
end 
use m1
allocate(k)
call ss
print *,'pass'
end

    
