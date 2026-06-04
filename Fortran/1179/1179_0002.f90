module m3
  implicit none
  interface
   module subroutine sub(v)
    end subroutine
  end interface
end

submodule(m3)smod
contains
  module procedure  sub
    implicit character(f,v)
    if (v  /=1) print *,902
  end 
end

use m3
    implicit none
call sub(1.0)
print *,'sngg193h : pass'
end

