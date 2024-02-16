c 

      program main

      integer, parameter:: M=16
      complex*8 a(M)
      complex*8 b(M)

      a = (0.0, 0.0)
      b = a

      call sub1(a,M)
      call sub2(a,b,M)

      if ((real(sum(a)+sum(b)) - aimag(sum(a)+sum(b)))
     &     .eq.6.0) then
         print *,"OK"
      else
         print *,"NG"
      endif

      end

      subroutine sub1(x,M)
      integer M
      complex*8 x(M)

c
      do i=1,3
         do j=1,3
            x(i*j) = x(i*j) + 1.0
         enddo
      enddo

      end

      subroutine sub2(x,y,M)
      integer M
      complex*8 x(M), y(M)

c
      do i=1,3
         do j=1,3
            x(i*j) = y(i*j) + 1
         enddo
      enddo

      end
