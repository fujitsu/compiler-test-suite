module m3
  implicit none
  interface
   module subroutine sub(n)
   end subroutine
   module subroutine sub2(a)
   external::a
   end subroutine
   module subroutine sub3(d)
   external::d
   end subroutine
  end interface
end

submodule(m3)smod
contains
  module subroutine sub3(d)
    !implicit none
   external::d
    if (d()/=1) print *,903
  end 
  module procedure  sub2
    !implicit none
    if (a()/=1) print *,902
  end 
  module procedure  sub
    !implicit none
    if (n/=1) print *,901
  end 
end

use m3
    implicit none
integer::nn=1
real   ,external::f
call sub3(f)
call sub2(f)
call sub(nn)
print *,'sngg172h : pass'
end
integer function nn()
    implicit none
nn=1
end


subroutine ss(m)
m=1
end
subroutine st(m)
external::m
print *,m()
end
function f()
f=1
end

