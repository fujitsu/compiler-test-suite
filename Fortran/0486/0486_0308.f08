module m1
contains
  subroutine foo( x1,x2,x3 )
   type(*):: x1(..)
   type(*):: x2
   integer:: x3(..)
   if (rank(x1)/=0) print *,101
   if (rank(x3)/=0) print *,101
   write(1,*) loc(x2)
  end subroutine
end
use m1
 integer:: scalar =0
  call foo(scalar,scalar, scalar )
print *,'pass'
end
