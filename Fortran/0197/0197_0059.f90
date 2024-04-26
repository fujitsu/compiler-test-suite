module m1
  contains
   subroutine f() bind(c)
   end subroutine
 end
use m1
 call f
  print *,'pass'
  end 
