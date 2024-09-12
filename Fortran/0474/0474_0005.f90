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

      u%f(:) = 0.0 ; v%f(:) = 1.0
      do i=1,imax
          u%f(i) = v%f(i) + 1.0
      end do
if (abs(u%f(imax)-2.)>0.0001) print *,101

      call operation( u, v )
if (abs(u%f(imax)-2.)>0.0001) print *,102
print *,'pass'

  end program

  subroutine operation( a, b )
      use test
      implicit none
      type(farr) :: a, b
      integer :: i

      do i=1,imax
          a%f(i) = b%f(i) + 1.0
      end do

  end subroutine

