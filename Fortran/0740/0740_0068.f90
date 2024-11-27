    module foo1
      type, public :: xx
         integer :: i
      end type xx
    end module foo1

    module foo2
      use foo1, only: xx0=>xx
      private
      public :: xx0
    end module foo2

    module foo3
      use foo2, only: xx0
      private
      type, public :: xx
         type(xx0) :: g
      end type xx
    end module foo3

    module foo
      use foo3, only: xx
    contains
      subroutine foobar(x)
        type(xx), intent(in) :: x
        if (x%g%i/=100)print *,'error'
      end subroutine foobar
    end module foo
use foo
 type(xx) :: x
 x%g%i=100
call foobar(x)
print *,'pass'
end
