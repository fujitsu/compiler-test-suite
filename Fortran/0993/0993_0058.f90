  program main

    type :: sTr1
      integer :: a(-10:2147483647)
    end type

    type :: sTr2
      integer :: b(0:2147483647)
    end type

    type :: sTr3
      integer :: c(2,2147483647)
    end type

    type :: sTr4
      integer :: d(2147483640)
    end type

  end program main
