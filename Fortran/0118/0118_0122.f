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
         b(i) = sin(b(i+1)) * 1.d0
         c(i) = cos(c(i+1)) * sin(a(i+2))
         d(i) = tan(d(i+1)) - cos(b(i+2))
         if (a(i).lt.10) then
            b(i) = sin(e(i)) + 1.d0
         else
            b(i) = sin(f(i)) - 1.d0
         endif
      enddo
      write(*,*) abs(b)
      stop
      end
