      call sub(10)
      stop
      end
      subroutine sub(n)
      real*8 y(245760),dummy(1024),x1(245760),s,s1,e1,ta

      do j = 1, 100000  
         do i = 1, n
            y(i) = 1
         end do
      enddo
      write(6,99) y(1)
 99   format(" result = ",f10.5)
      end
