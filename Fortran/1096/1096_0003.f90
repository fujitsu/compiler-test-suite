module m
implicit none
 interface 
  module subroutine sub(xv)
  integer::xv
  end subroutine
  module subroutine  f2(k1)
   integer,intent(in)::k1
  end
 end interface
end
submodule (m) xx
 implicit none
 interface gen2
  procedure    f2
 end interface
contains
  module subroutine sub(xv)
  integer::xv
call gen2(xv)
 end 
  ! module procedure f2
  module subroutine  f2(k1)
   integer,intent(in)::k1
   if (k1/=2) print *,101
  end
end

use m
call sub(2)
print *,'sngg454h : pass'
end
