module m
  integer(4) :: a,b,c
  private
  public ::set,check
contains
  subroutine set
    a=11
    b=22
    c=33
  end subroutine
  subroutine check
    if (a /= 11) print *,3
    if (b /= 22) print *,4
    if (c /= 33) print *,5
  end subroutine
end

use m
call set
call check
print *,'pass'
end

