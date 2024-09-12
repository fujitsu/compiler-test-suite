      integer n
      double precision a(10),b(10)
      n=10
      a=10
      b=3
      call foo(a,b,n)
      write(6,*)"a=",a
      write(6,*)"b=",b
      write(6,*)"n=",n
      end

      subroutine foo(a,b,n)
      implicit none
      integer n
      double precision a(n), b(n)
      integer i

      if (n .eq. 0) then
        write(6,*)"n=",n
      endif

      do i = 1, n
        b(i) = log(a(i))
      enddo
      end
