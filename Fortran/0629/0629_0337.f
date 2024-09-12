      subroutine foo(a,b,n)
      implicit none
      integer n
      double precision a(n), b(n)
      integer i

      do i = 1, n
        b(i) = log(a(i))
      enddo
      end

      double precision aa(10), bb(10)
      n = 10
      do i=1,n
        aa(i) = i
        bb(i) = 0
      enddo
      call foo(aa,bb,n)
      write(6,1) bb
 1    format(5f15.8)
      end
