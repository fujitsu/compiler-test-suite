module m0
  type x
    private
    integer:: x0=2
  end type
end
module m1
  use m0
  type,extends(x):: y
    integer:: x0
  end type
end
module m2
  use m1
  private::y
  contains
  subroutine s1
   type(y):: v
    v%x0=1
    if (v%x0/=1) print *,101
   end subroutine
end
use m2
call s1
print *,'pass'
end

