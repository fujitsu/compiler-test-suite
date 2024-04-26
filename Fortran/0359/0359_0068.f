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
         d(i) = cmplx(i,i)
         x(i) = i
         y(i) = i+10
         j=j+2
      enddo

      do i=1,10
         b(i) = d(i)+(1.,2.)
         a(i) = b(i)+(3.,4.)
         d(i) = b(i)+(5.,6.)
      enddo
      write(6,*) a
      write(6,*) b
      write(6,*) d

      do i=1,10
         b(i) = d(i)+(1.,2.)
         a(i) = b(i)+(3.,4.)
         d(i) = b(i)+(5.,6.)+x(i)
      enddo
      write(6,*) a
      write(6,*) b
      write(6,*) d

      do i=1,10
         b(i) = d(i)+3
         a(i) = b(i)+x(i)
         d(i) = b(i)+x(i)
      enddo
      write(6,*) a
      write(6,*) b
      write(6,*) d

      do i=1,10
         a(i) = b(i)+c(i)
         b(i) = d(i)
      enddo
      write(6,*) a
      write(6,*) b

      do i=1,10
         a(i) = b(i)+c(i)
         b(i) = d(i)
         d(i) = b(i)+x(i)
      enddo
      write(6,*) a
      write(6,*) b
      write(6,*) d
      end      

      subroutine c16
      complex*16 a(10),b(10),c(10),z,d(10)
      real*4 x(10),y(10)
      j = 1
      do i=1,10
         a(i) = cmplx(i,i+2)
         b(i) = cmplx(j,j+1)
         c(i) = cmplx(j+10,j+11)
         d(i) = cmplx(i,i)
         x(i) = i
         y(i) = i+10
         j=j+2
      enddo

      do i=1,10
         b(i) = d(i)+(1.,2.)
         a(i) = b(i)+(3.,4.)
         d(i) = b(i)+(5.,6.)
      enddo
      write(6,*) a
      write(6,*) b
      write(6,*) d

      do i=1,10
         b(i) = d(i)+(1.,2.)
         a(i) = b(i)+(3.,4.)
         d(i) = b(i)+(5.,6.)+x(i)
      enddo
      write(6,*) a
      write(6,*) b
      write(6,*) d

      do i=1,10
         b(i) = d(i)+3
         a(i) = b(i)+x(i)
         d(i) = b(i)+x(i)
      enddo
      write(6,*) a
      write(6,*) b
      write(6,*) d

      do i=1,10
         a(i) = b(i)+c(i)
         b(i) = d(i)
      enddo
      write(6,*) a
      write(6,*) b

      do i=1,10
         a(i) = b(i)+c(i)
         b(i) = d(i)
         d(i) = b(i)+x(i)
      enddo
      write(6,*) a
      write(6,*) b
      write(6,*) d

      end      
