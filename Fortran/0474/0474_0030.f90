 module test
      implicit none

      type farr
          real,pointer :: f(:)
      end type

      type(farr),pointer :: u

      integer,parameter :: imax = 1000
contains
 subroutine ss
      allocate( u )
      allocate( u%f(imax) )
 end

  end module

  program main
      use test
      implicit none

call ss
      u%f(1) = 0.0 
if (u%f(1)/=0    ) print *,102
print *,'pass'

  end program


