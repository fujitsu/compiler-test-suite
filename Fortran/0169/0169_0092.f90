module m
  interface
    module subroutine s1(a)
      integer,intent(in) :: a(1*2+3*2)
    end subroutine
    module subroutine s2(a)
      integer,intent(in) :: a(4/1+2)
      character(8) :: f(size(a))
    end subroutine
  end interface
contains
  module procedure s1
    if (size(a) /= 8) print *,1
    if (any(a /= [1,2,3,4,5,6,7,8])) print *,2
  end procedure
  module procedure s2
    if (size(a) /= 6) print *,3
    if (any(a /= [1,2,3,4,5,6])) print *,4
  end procedure
end

use m
integer :: b(8) = [ (i,i=1,8) ]
call s1(b)
call s2(b(1:6))
print *,'pass'
end
