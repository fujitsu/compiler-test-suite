module m3
  implicit none
  interface
   module subroutine sub(f,v)
  !!!implicit none
    integer,external::f
    end subroutine
  end interface
end

submodule(m3)smod
contains
  module procedure  sub
    implicit none
    if (f()/=1) print *,901
    if (v  /=1) print *,902
  end 
end

use m3
    implicit none
integer,external::nn
call sub(nn,1.0)
print *,'sngg175h : pass'
end
integer function nn()
    implicit none
nn=1
end

