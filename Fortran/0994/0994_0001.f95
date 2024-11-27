  module mod
    type derived_type
      integer :: a=1
    end type derived_type

    type(derived_type) ,allocatable :: a(:)
    type(derived_type) ,pointer     :: b(:)
    type(derived_type)              :: c
  end module

  program main
  end program main
