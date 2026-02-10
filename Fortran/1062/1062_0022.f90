module m3
   external::a
   pointer::a
real::a
end

  subroutine sub
use m3
    implicit none
    if (a()/=1) print *,903
  end 
use m3
external::f
a=>f
call sub
print *,'sngg174h : pass'
end
function f()
f=1
end

