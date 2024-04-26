      call c8
      call c16
      end

      subroutine c8
      complex*8 a(10),b(10),c(10),z,d(10)
      real*4 x(10),y(10)
      j = 1
      do i=1,10
         a(i) = cmplx(i,i+2)
         b(i) = cmplx(j,j+1)
         c(i) = cmplx(j+10,j+11)
         d(i) = cmplx(i-5,i-6)
         x(i) = i
         y(i) = i+10
         j=j+2
      enddo

      do i=1,10
         a(i) = b(i)-x(i)
         d(i) = y(i)-c(i)
      enddo
      write(6,*) a
      write(6,*) d

      do i=1,10
         a(i) = b(i)+x(i)
         d(i) = b(i)+y(i)
      enddo
      write(6,*) a
      write(6,*) d

      do i=1,10
         a(i) = b(i)+x(i)
         d(i) = b(i)+x(i)
      enddo
      write(6,*) a
      write(6,*) d

      do i=1,10
         a(i) = b(i)+x(i)-y(i)
         d(i) = b(i)+x(i)-y(i)
      enddo
      write(6,*) a
      write(6,*) d

      do i=1,10
         a(i) = y(i)+b(i)+x(i)
         d(i) = y(i)+b(i)+x(i)
      enddo
      write(6,*) a
      write(6,*) d

      do i=1,10
         a(i) = c(i)+b(i)+x(i)
         d(i) = c(i)+b(i)+y(i)
      enddo
      write(6,*) a
      write(6,*) d

      do i=1,10
         b(i) = d(i)
         a(i) = real(b(i))+(3.,4.)
         d(i) = b(i)
         c(i) = b(i)
      enddo
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d

      end      

      subroutine c16
      complex*16 a(10),b(10),c(10),z,d(10)
      real*8 x(10),y(10)
      j = 1
      do i=1,10
         a(i) = cmplx(i,i+2)
         b(i) = cmplx(j,j+1)
         c(i) = cmplx(j+10,j+11)
         d(i) = cmplx(i-5,i-6)
         x(i) = i
         y(i) = i+10
         j=j+2
      enddo

      do i=1,10
         a(i) = b(i)-x(i)
         d(i) = y(i)-c(i)
      enddo
      write(6,*) a
      write(6,*) d

      do i=1,10
         a(i) = b(i)+x(i)
         d(i) = b(i)+y(i)
      enddo
      write(6,*) a
      write(6,*) d

      do i=1,10
         a(i) = b(i)+x(i)
         d(i) = b(i)+x(i)
      enddo
      write(6,*) a
      write(6,*) d

      do i=1,10
         a(i) = b(i)+x(i)-y(i)
         d(i) = b(i)+x(i)-y(i)
      enddo
      write(6,*) a
      write(6,*) d

      do i=1,10
         a(i) = y(i)+b(i)+x(i)
         d(i) = y(i)+b(i)+x(i)
      enddo
      write(6,*) a
      write(6,*) d

      do i=1,10
         a(i) = c(i)+b(i)+x(i)
         d(i) = c(i)+b(i)+y(i)
      enddo
      write(6,*) a
      write(6,*) d

      do i=1,10
         b(i) = d(i)
         a(i) = real(b(i))+(3.,4.)
         d(i) = b(i)
         c(i) = b(i)
      enddo
      write(6,*) a
      write(6,*) b
      write(6,*) c
      write(6,*) d

      end      
