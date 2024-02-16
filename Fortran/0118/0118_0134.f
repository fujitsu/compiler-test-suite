      implicit none

      call sub()
      stop
      end

      subroutine sub()
      real(8),dimension(0:21)::a,b,c,d,e,f
      real(8),dimension(0:12)::g
      integer::i
      a = 0.d0
      b = 0.d0
      c = 1.d0
      d = 2.d0
      e = 0.d0
      f = 2.d0
      g = 10.d0
      do i=1,20
         a(i) = a(i) + 1.d0
         b(i) = sin(b(i+1)) * 1.d0
         c(i) = c(i+1) * a(i+1)
         d(i) = d(i+1) + b(i)
         if (a(i).lt.10) then
            e(i) = f(i) + 1.d0
         else
            e(i) = g(i) - 1.d0
         endif
      enddo
      write(*,*) abs(e)
      stop
      end
