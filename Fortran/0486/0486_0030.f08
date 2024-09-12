module m1
contains
pure function k1()
entry k2()
k1=1
end  function
end
pure subroutine s1(n)
use m1
intent(out)::n
n=0
if (k1()/=1) n=n+1
if (k2()/=1) n=n+2
end
call s1(n)
if (n/=0) print *,101
print *,'pass'
end
