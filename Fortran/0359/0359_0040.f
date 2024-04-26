      call c8
      call c16
      end

      subroutine c8
      complex a(10),b(10),c(10),d(10)
      real   x(10),y(10)/10*3/

      j=1
      do i=1,10
         x(i) = 11-i
         a(i) = cmplx(i-2,i-3)
        b(i) = cmplx(j,j+1) 
        c(i) = cmplx(j+10,j+11)
        j=j+2
      enddo

      do  i=1,10
          d(i) = a(i) 
          x(i) = d(i)+1
          y(i) = d(i)-3
      enddo
      WRITE(6,*) d
      WRITE(6,*) x
      WRITE(6,*)y 

      do  i=1,10
         b(i) = a(i)+2
         x(i) = c(i)-b(i)
      enddo
      WRITE(6,*) b
      WRITE(6,*) d
      WRITE(6,*) x
      WRITE(6,*)y

      do  i=1,10
         b(i) = d(i)+a(i)
         x(i) = b(i)
         y(i) = a(i)
      enddo
      WRITE(6,*) b
      WRITE(6,*) d
      WRITE(6,*) x
      WRITE(6,*)y

      end
      subroutine c16
      complex*16 a(10),b(10),c(10),d(10)
      real*8   x(10),y(10)/10*3/

      j=1
      do i=1,10
         x(i) = 11-i
         a(i) = cmplx(i-2,i-3)
        b(i) = cmplx(j,j+1) 
        c(i) = cmplx(j+10,j+11)
        j=j+2
      enddo

      do  i=1,10
          d(i) = a(i) 
          x(i) = d(i)+1
          y(i) = d(i)-3
      enddo
      WRITE(6,*) d
      WRITE(6,*) x
      WRITE(6,*)y 

      do  i=1,10
         b(i) = a(i)+2
         x(i) = c(i)-b(i)
      enddo
      WRITE(6,*) b
      WRITE(6,*) d
      WRITE(6,*) x
      WRITE(6,*)y

      do  i=1,10
         b(i) = d(i)+a(i)
         x(i) = b(i)
         y(i) = a(i)
      enddo
      WRITE(6,*) b
      WRITE(6,*) d
      WRITE(6,*) x
      WRITE(6,*)y

      end
