    module foo
      public :: bar
      type, public :: t
         integer, dimension(:), pointer :: i
      end type t
    contains
      pure subroutine bar (x)
        type(t), intent(out) :: x
        allocate (x%i(1))
        x%i = 1
      end subroutine bar
    end module foo

    program main
      use foo
      integer, parameter :: N = 10
      type(t) :: a
      call bar (a)
      if (any(a%i/=N/10))write(6,*) "NG"
      print *,'pass'
    end program main
