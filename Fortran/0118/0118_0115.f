      implicit none
      integer l
      parameter (l = 10)

      call sub(l)
      stop
      end

      subroutine sub(l)
      real(8),dimension(0:l)::a,b,c,d
      integer::i
      a = 0.d0
      b = 0.d0
      c = 1.d0
      d = 2.d0
      do i=1,l
         a(i) = a(i) + 1.d0
         if (a(i).lt.10) then
            b(i) = c(i) + 1.d0
         else
            b(i) = d(i) - 1.d0
         endif
      enddo
      write(*,*) abs(b)
      stop
      end
