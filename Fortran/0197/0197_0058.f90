module m1
 interface
   module subroutine f()
   end subroutine
 end interface
 contains
   module subroutine f()
   end subroutine
 end
use m1
 call f
  print *,'pass'
  end 
