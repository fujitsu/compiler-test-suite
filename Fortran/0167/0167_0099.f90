module m
  integer(4) :: a,b,c,x
  equivalence(a,x)
  private  :: a,b,c,x
contains
  subroutine set1
    a=11
    b=22
    c=33
  end subroutine
  subroutine set2
    x=44
  end subroutine
  subroutine check1
    if (x /= 11) print *,132
    if (b /= 22) print *,14
    if (c /= 33) print *,15
  end subroutine
  subroutine check2
    if (x /= 44) print *,232
    if (b /= 22) print *,24
    if (c /= 33) print *,25
  end subroutine
end

use m
call set1
call check1
call set2
call check2
print *,'pass'
end

subroutine sub
  use m
  y=11
  b=22
  c=33
end

subroutine sub2
  use m
  x=44
end
