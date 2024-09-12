module m1
integer,pointer::p
contains
 function f() result(r)
  integer,pointer::r
  allocate( r ,source=1)
  p=>r
 end
end
use m1
integer::k=2
f()=k+1
if (p/=3) print *,101
print *,'pass'
end
