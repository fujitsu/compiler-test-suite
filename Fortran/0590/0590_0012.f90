module m1
  contains
  subroutine s(c,k)
  real :: k
   character(RADIX(k+1-1)),value :: c

   if (len(c) /= RADIX(k+1-1)) print *,101
   if (c /= '12') print *,102

   c='ab'
  end subroutine
end
  
subroutine s1   
use m1
 character(2):: cc = '12'
 call s( cc , 4.0)
 if (cc /= '12') print *,201
end
      
program pro
call s1
print *,'PASS'
end
   

