module m3
  implicit none
  interface
   module subroutine sub(n)
    implicit none
    integer,external::n
    end subroutine
  end interface
end

submodule(m3)smod
contains
  module procedure  sub
    implicit none
    if (n()/=1) print *,901
  end 
end

use m3
    implicit none
integer,external::nn
call sub(nn)
print *,'sngg167h : pass'
end
integer function nn()
    implicit none
nn=1
end

