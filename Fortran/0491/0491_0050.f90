 module test
      implicit none
      integer,parameter :: imax = 1000

      type farr
          real             :: f(imax)
      end type

      type(farr),pointer :: u, v

  end module

  program main
      use test
      implicit none
      integer :: i

      allocate( u, v )

          u%f(1) = 1.0

print *,'pass'

  end program
