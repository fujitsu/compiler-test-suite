module m1
    implicit none
    procedure(abs),pointer::q
    procedure(q  ),pointer::t
end

use m1
    implicit none
call s
   if (q(2.3)/=2.3) print *,10003  
   if (t(2.3)/=2.3) print *,10004  
print *,'sngg717h : pass'
  end 

subroutine s
use m1
    implicit none
q=>abs
t=>q
end

