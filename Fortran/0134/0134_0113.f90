module m1
contains
subroutine sub(i)
 i=i+1
 call ins(i)
 contains
  subroutine ins(k)
   k=k+1
  end subroutine
end subroutine
end
use m1
k=1
call sub(k)
if (k/=3)print *,101,k
print *,'pass'
end
  
