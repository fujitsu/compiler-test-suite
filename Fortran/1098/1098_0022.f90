module m
implicit none
 type x
   integer::x1=2
 end type
 interface 
  module subroutine sub(xv)
  type(x)::xv
  end subroutine
  module subroutine  f2(k1)
   type(x),intent(in)::k1
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
  type(x)::xv
!if (gen2(xv)/=5) print *,206
call gen2(xv)
 end 
   module procedure f2
   if (k1%x1/=2) print *,101
  end
end

use m
print *,'sngg450h : pass'
end
