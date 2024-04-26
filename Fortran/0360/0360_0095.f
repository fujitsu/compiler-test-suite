      complex*8 a(10),b(10),c(10)
      complex*8 x(10),y(10),z(10)
      common //i1,x,y,z
      call c8(a,b,c,10)
      call c8_common(x,y,z,10)
      end

      subroutine c8(a,b,c,n)
      complex*8 a(n),b(n),c(n)
      do i=1,n
         a(i) = 1
         b(i) = 2
         c(i) = 3
      enddo
      write(6,*) a,b,c
      end

      subroutine c8_common(a,b,c,n)
      complex*8 a(n),b(n),c(n)
      do i=1,n
         a(i) = 1
         b(i) = 2
         c(i) = 3
      enddo
      write(6,*) a,b,c
      end

