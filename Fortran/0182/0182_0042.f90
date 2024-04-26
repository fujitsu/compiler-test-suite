module mod
  interface
    module subroutine sub1(val)
      integer, intent(in) :: val
    end subroutine sub1

    module subroutine sub2(val)
      integer, intent(in) :: val
    end subroutine sub2
  end interface
end module

submodule(mod)submod
  contains
    module subroutine sub1(val)
      integer, intent(in) :: val
    end subroutine sub1

    module procedure sub2
    end procedure sub2
end submodule submod

use mod
call sub1(1)
call sub2(2)
print *,'pass'
end
