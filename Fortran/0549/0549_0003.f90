module m1
type x 
  integer::x1=1
end type
contains
  subroutine s1
  call s1s
  contains
    subroutine s1s
    type(x)::v
    if (v%x1/=1) print *,101
    end subroutine
  end subroutine
end
use m1
call s1
print *,'pass'
end
