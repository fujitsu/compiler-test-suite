module m2
  implicit none
  integer :: n=2
end

module m
  implicit none
  integer :: n=100
  interface
    module subroutine sub(a,b)
      use m2
  implicit none
      character(n) :: a
      character(len(a)) :: b
    end subroutine
  end interface
end

submodule(m)smod
contains
  module procedure sub
      use m2
      character(n) :: aa
      character(len(a)) :: bb
    if (len(a) /= 2) print *,3,len(a)
    if (len(a) /= 2) print *,3,len(a)
    if (len(aa) /= 2) print *,41
    if (len(bb) /= 2) print *,42
  end procedure
end

use m
character(2)::a,b
call sub(a,b)
print *,'pass'
end
