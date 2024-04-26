      complex*16 a(10),b(10),c(10)
      complex*16 x(10),y(10),z(10)
      common //i1,x,y,z
      call c16(a,b,c,10)
      call c16_common(x,y,z,10)
      end

      subroutine c16(a,b,c,n)
      complex*16 a(n),b(n),c(n)
      do i=1,n
         a(i) = 1
         b(i) = 2
         c(i) = 3
      enddo
      write(6,*) a,b,c
      end

      subroutine c16_common(a,b,c,n)
      complex*16 a(n),b(n),c(n)
      do i=1,n
         a(i) = 1
         b(i) = 2
         c(i) = 3
      enddo
      write(6,*) a,b,c
      end

