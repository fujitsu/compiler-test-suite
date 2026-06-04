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
contains
  module subroutine sub(xv)
  integer::xv
 interface gen2
  procedure    f2
 end interface
call gen2(xv)
 end 
   module procedure f2
   if (k1/=2) print *,101
  end
end

use m
call sub(2)
print *,'sngg548h : pass'
end
