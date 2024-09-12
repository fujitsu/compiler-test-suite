module m1
 interface
  function if()
  end function
 end interface
 contains
 subroutine s1(p1, d1, p2, d2, k1, k2)
  implicit character(k1 + 5)(p, d)
  procedure(if)         :: d1, d2
  procedure(if),pointer :: p1, p2
  optional p2,d2
  if (p1() /= 1) print *,101
  if (d1() /= 1) print *,102
 end subroutine
end module

use m1
print *,'pass'
end
