      complex*8 a(18),b(10),c(10)
      complex*8 x(18),y(10),z(10)
      common //i1,x,y,z
      a = 0
      b = 0
      c = 0
      x = 0
      y = 0
      z = 0
      do i=1,9
         call c8(a(i),b,c,10)
         call c8_common(x(i),y,z,i)
      enddo
      end

      subroutine c8(a,b,c,n)
      complex*8 a(n),b(n),c(n)
      do i=n,9
         a(i) = 1
         b(i) = 2
         c(i) = 3
      enddo
      write(6,*) a(n),b(n),c(n)
      end

      subroutine c8_common(a,b,c,n)
      complex*8 a(n),b(n),c(n)
      do i=1,n
         a(i) = 1
         b(i) = 2
         c(i) = 3
      enddo
      write(6,*) a(n),b(n),c(n)
      end

