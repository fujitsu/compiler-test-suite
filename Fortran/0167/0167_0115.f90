module m
  integer(4) :: a,b,c
  equivalence(a,b,c)
  private a,b,c
contains
  subroutine set1
    a=11
  end subroutine
  subroutine check1
    if (a /= 11) print *,2
    if (b /= 11) print *,2
    if (c /= 11) print *,3
  end subroutine
  subroutine set2
    b=22
  end subroutine
  subroutine check2
    if (a /= 22) print *,2
    if (b /= 22) print *,2
    if (c /= 22) print *,3
  end subroutine
  subroutine set3
    c=33
  end subroutine
  subroutine check3
    if (a /= 33) print *,2
    if (b /= 33) print *,2
    if (c /= 33) print *,3
  end subroutine
end

use m
call set1
call check1
call set2
call check2
call set3
call check3
print *,'pass'
end

