module m1
  integer, target :: x = 42
  integer, target :: x1 = 44
contains

  function fx()
    integer, pointer :: fx
    fx => x1
  end function

function test(a, b)
  integer,intent(out)::a
  integer,target,intent(out) :: b
    b = 420
    a = b +1
    if (a /=421 )print *,101
    if (b /=420 )print *,102
    test=b
  end function
end module

use m1
  if (x1 /=44 )print *,103
  if (test(x, fx()) /= 420) print*,105
  if (x1 /=420 )print *,104
  print *,"Pass"
end program
