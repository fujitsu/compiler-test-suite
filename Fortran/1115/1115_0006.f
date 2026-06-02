      subroutine sub(a,b,m,x)
      real*8 a(8),b(8),x(3,8)
      do i=2,m
         x(1,i) = x(1,i) + 1
         x(2,i) = x(2,i) + 2
         x(3,i) = x(3,i) + 3
         b(i) = b(i-1) + 4
         a(i) = b(i) + 5
      enddo
      end

      real*8 a(8),b(8),x(3,8)
      do i=1,8
         a(i) = i
         b(i) = i*2
         x(1,i) = i*3
         x(2,i) = i*4
         x(3,i) = i*5
      enddo
      call sub(a,b,8,x)
      write(6,*) a
      write(6,*)
      write(6,*) b
      write(6,*)
      write(6,*) x
      end
