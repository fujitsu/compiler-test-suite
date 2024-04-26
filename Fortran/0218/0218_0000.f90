module mod
  type ty
private
   integer :: i=10
  end type
  type(ty) :: x
  interface
   module subroutine sub(a)
   integer :: a(x%i)
   end subroutine
  end interface
end
       
submodule (mod) smod
contains
  module procedure sub
  i=arr(1)
  i=i
  end
end

use mod
integer :: arr(10)
arr=1
call sub(arr)
print *,'pass'
end
function arr(k)
arr=k
end
