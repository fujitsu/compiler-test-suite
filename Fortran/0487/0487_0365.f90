module m1
contains
 function m()
m=2
 end function
end
subroutine s2
use m1
interface g
  function k()
  end function
end interface
kf(n)=n+k()
kg(n)=n+m()
kh(n)=n+g()
if (kf(2)/=4) print *,102
if (kg(2)/=4) print *,102
end
call s2
print *,'pass'
end
  function k()
   k=2
  end function
