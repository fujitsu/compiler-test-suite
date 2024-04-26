module mod
  type h  
   integer :: ii
  end type
  type ty
   type(h) :: i
  end type
  type(ty) :: x
  interface
   module subroutine sub(a)
   integer :: a(x%i%ii)
   end subroutine
  end interface
end
       
submodule (mod) smod
contains
  module procedure sub
  i=1
  ii=1
if(i/=1 .or. ii/=1) print *,201
if (size(a)/=2) print *,202
if (x%i%ii/=2) print *,302
  end
end

use mod
   integer :: a(2)
x%i%ii=2
call sub(a)
print *,'pass'
end
