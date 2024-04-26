module m1
  contains
   impure subroutine s
   end subroutine
 end
use m1
 call s
  print *,'pass'
  end 
