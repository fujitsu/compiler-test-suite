      program main
      integer,parameter :: N=4
      real(kind=8), dimension(1:N,1:N) :: a

      do j=1,N
        do i=1,N
          a(i,j) = 1.
        enddo
      enddo
      do j=1,isub(N)
        do i=1,isub(N)
          a(i,j) = 1.
        enddo
      enddo
      print *,a
      end program main

      integer function isub(i)
      isub = i
      end function
