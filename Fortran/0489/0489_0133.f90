module m1
contains
  subroutine foo1( x ,k1,k2 )
   type(*):: x(..)
   if (k1/=0) then
     if (any(lbound(x)/= [k1,k2])) print *,101, lbound(x)
     if (rank(x)/=2) print *,121
   else
     if (any(lbound(x)/= 0 )) print *,111, lbound(x)
     if (rank(x)/=0) print *,122
   endif
   call foo2(x,k1,k2)
  end subroutine
  subroutine foo2( x ,k1 ,k2 )
   type(*):: x(..)
   if (k1/=0) then
     if (any(lbound(x)/= [k1,k2])) print *,201, lbound(x)
     if (rank(x)/=2) print *,221
   else
     if (any(lbound(x)/= 0 )) print *,211, lbound(x)
     if (rank(x)/=0) print *,222
   endif
  end subroutine
end
use m1
 integer:: array( 2:10, 3:10)=0
 integer:: scalar =0
  call foo1(array  , 1 , 1)
  call foo1(scalar , 0 , 0)
print *,'pass'
end
 
   
