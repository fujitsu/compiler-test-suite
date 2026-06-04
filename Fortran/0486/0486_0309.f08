module m1
contains
  subroutine foo( x1 )
   type(*):: x1(..)
   if (rank(x1)/=0) print *,101
  end subroutine
end
use m1
 integer:: scalar =0
  call foo(scalar )
print *,'pass'
end
