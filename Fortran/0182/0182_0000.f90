module mdd
  interface
    module subroutine sdb1(val)
      integer, intent(in) :: val
    end subroutine
  end interface
end module

submodule(mdd)submdd
contains
  module subroutine sdb1(val)
    integer, intent(in) :: val
    if (val /= 5) print *,1
  end subroutine
end

use mdd
call sdb1(5)
print *,'pass'
end
