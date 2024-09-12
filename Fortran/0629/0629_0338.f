      REAL*8 a(10),b(10)
      DATA a/1,2,3,4,5,6,7,8,9,10/

      call foo(a,b,10) 
      write(6,*)"b=",b
      end
      subroutine foo(a,b,n)
      implicit none
      integer n
      double precision a(n), b(n)
      integer i

      do i = 1, n
        b(i) = log(a(i))
      enddo
      end
