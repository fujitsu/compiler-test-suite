  program main

    type er1
      integer,allocatable :: cp1(:)
    end type er1

    type (er1),parameter :: v1=er1(null())
    type (er1) :: v2
    parameter (v2=er1(null()))

    type er2
      type(er1) :: cp1
    end type er2

    type(er2),parameter :: v3=er2(er1(null()))
    type(er2) :: v4
    parameter (v4=er2(er1(null())))

  end program main
