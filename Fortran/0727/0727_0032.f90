  module type_define
    private
    public :: error
    type error
      private
      integer :: comp1 = 5
    end type error
  end module type_define

    use type_define
    type(error),dimension(10)::arg
    call assumed_array_check(arg)
    print *,'pass'
    contains

  subroutine assumed_array_check(arg)
    use type_define
    type(error),intent(out),dimension(:) :: arg
  end subroutine
  end
