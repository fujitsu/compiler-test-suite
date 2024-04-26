module m1
  type x
    integer:: x0
  end type
end
module m2
  use m1
  private ::x
  type,extends(x):: y
    integer:: x1
  end type
  contains
  subroutine s1
   type(y):: v
    v%x1=1
    if (v%x1/=1) print *,101
   end subroutine
end
use m2
print *,'pass'
end

