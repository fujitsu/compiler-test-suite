      integer function bar(i) 
      integer i
      bar = i
      end function

      subroutine foo(nrap, n, y)
      integer nrap, n
      integer bar
      integer i, j, index 
      real*8 y(nrap, n)
      real*8 :: c0=1.999

      do i = 1, nrap
         index = bar(i)
         do j = 1, n
            y(j,index) = c0;

         end do
      end do

      if (y(100,100) == c0) then
         write(*,*) 'OK'
      else
         write(*,*) 'NG'
      endif
      end subroutine


      program main
      real*8,DIMENSION(100,100) :: a
      integer :: n = 100
      call foo(n, n, a)
      end program
