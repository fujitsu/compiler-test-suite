module n
use ISO_FORTRAN_ENV
integer,parameter::p=4
end
module m1
  use n
  private
    integer(int32) :: c
    integer(p    ) :: z
  interface
     module subroutine sub1()
     end subroutine
  end interface
end module m1

submodule (m1) m1sub
    integer(int32) :: b
    integer(p    ) :: w
contains
  module subroutine sub1()
    integer(int32) :: a
    integer(p    ) :: q
print *,c
print *,p
  end subroutine sub1
end submodule m1sub

print *,'sngg962m : pass'
end
