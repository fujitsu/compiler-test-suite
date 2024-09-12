module m1
 type x(k1)
  integer,kind::k1
  integer a(k1)
 end type
contains
function f1() result(r)
 type (x(2)):: r
 entry f2() result(r)
  r= x(2)( [1,2] )
end function
end
subroutine s1
use m1
 type (x(2)):: v
v= f1()
if (v%a(1)/=1) print *,101
if (v%a(2)/=2) print *,102
  v= x(2)( [11,12] )
if (v%a(1)/=11) print *,103
if (v%a(2)/=12) print *,104
v= f2()
if (v%a(1)/=1) print *,105
if (v%a(2)/=2) print *,106
end
call s1
print *,'pass'
end
