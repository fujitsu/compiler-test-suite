module m1
 type y(k)
   integer,kind::k=2
   integer:: z(k)
 end type
contains
subroutine s1( x,xx, n)
 type(y(2)),value:: x
 type(y),value:: xx
if (any(x%z/= [1,n])) print *,301
if (any(xx%z/= [11,12])) print *,302
end
end
subroutine s(n)
use m1
 type(y(2)):: x
 type(y):: xx
x%z=[1,2]
xx%z=[11,12]
call s1( x , xx, n)
end
call s(2)
print *,'pass'
end
