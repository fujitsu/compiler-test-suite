module k1
  implicit none
  integer :: n=1
end

module k2
  implicit none
contains
  subroutine sub1(a)
      use k1
integer::a(n)
    if (size(a) /= 1) print *,1,size(a)
    if (n/=1) print *,2,n
  end subroutine
end

use k2
integer::a(8)
call sub1(a)
print *,'pass'
end

