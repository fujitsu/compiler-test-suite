module m
  interface
    module subroutine s(a,b,c)
      integer,intent(in) :: a(c)
      character(c) :: b
      integer,intent(in) :: c
    end subroutine
  end interface
end 

submodule(m)sm
contains
  module procedure s
    if (size(a)/=5) print *,1
    if (len(b)/=5) print *,2
    if (c/=5) print *,3
  end procedure
end

use m
integer :: x(5)
character(5) :: y
call s(x,y,5)
print *,'pass'
end
