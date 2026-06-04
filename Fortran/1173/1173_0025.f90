module m1
  type t
    integer :: i!=4
  end type
  type(t) :: y
integer::n
end
module m333
  interface
    module subroutine sub(a)
       use m1
      integer :: a(n  )
    end subroutine
  end interface
end

use m333
!use m1
  type t
    integer :: i!=4
  end type
  type(t) :: y
y%i=2
if (y%i/=2) print *,200
print *,'sngg398h : pass'
end
