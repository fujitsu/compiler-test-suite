      implicit none
      integer l
      parameter (l = 10)

      call sub(l)
      stop
      end

      subroutine sub(l)
      real(8),dimension(0:l+2)::a,b,c,d,e,f
      integer::i, h, g
      h = 0
      g = 6
      a = 0.d0
      b = 0.d0
      c = 1.d0
      d = 2.d0
      e = 1.d0
      f = 3.d0
      do i=1,l
         h = h + 1
         a(i) = a(i+1) + 1.d0
         b(i) = sin(b(i+1)) * 1.d0
         e(i) = cos(c(i+1)) * a(i+2)
         f(i) = d(i) + b(i)
         if (h.gt.5) then
            if (g.eq.6) then
               b(i) = e(i) + 1.d0
            else
               b(i) = f(i) - 1.d0
            endif
         endif
      enddo
      write(*,*) abs(b)
      stop
      end