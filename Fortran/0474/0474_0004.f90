      type farr
          real,allocatable :: f(:)
      end type

      type(farr),pointer :: u, v

      integer,parameter :: imax = 1000

      allocate( u, v )
      allocate( u%f(imax), v%f(imax) )

      u%f(:) = 0.0 ; v%f(:) = 1.0
      do i=1,imax
          u%f(i) = v%f(i) + 1.0
      end do

      if (abs(u%f(imax)-2.)>0.0001) print *,101
print *,'pass'

  end program
