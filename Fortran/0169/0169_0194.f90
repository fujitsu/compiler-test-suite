module m
  interface
    module function f(b,c)
      integer :: f(c)
      character(c) :: b
      integer,intent(in) :: c
    end function
  end interface
contains
  module procedure f
    if (size(f)/=5) print *,1
    if (len(b)/=5) print *,2
    if (c/=5) print *,3
    f = [ (i,i=1,5) ]
  end procedure
end

use m
integer :: x(5)
character(5) :: y
x=f(y,5)
if (any(x/=[1,2,3,4,5])) print *,1
print *,'pass'
end
