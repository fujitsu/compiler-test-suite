module m1
  contains
   type(integer) function f()
     f=1
   end function
 end
use m1
 if( f()/=1) print *,101
  print *,'pass'
  end 
