  module mod
    type,private:: typ1
      integer :: a
    end type
    type typ2
      type(typ1) :: a
    end type

  end module

  program main

  end program main
