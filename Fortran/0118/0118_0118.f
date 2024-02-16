      implicit none
      integer l
      parameter (l = 10)

      call sub(l)
      stop
      end

      subroutine sub(l)
      real(8),dimension(0:l+2)::a,b,c,d,e,f
      integer::i
      a = 0.d0
      b = 0.d0
      c = 1.d0
      d = 2.d0
      e = 1.d0
      f = 3.d0
      do i=1,l
         a(i) = a(i+1) + 1.d0
         c(i) = c(i+1) * 1.d0
         e(i) = cos(c(i)) * a(i)
         f(i) = tan(d(i)) + b(i)
         if (a(i).lt.10) then
            idx = a(i)
            b(idx) = e(i) + 1.d0
         else
            idx = a(i)
            b(idx) = f(i) - 1.d0
         endif
      enddo
      write(*,*) abs(b)
      stop
      end
