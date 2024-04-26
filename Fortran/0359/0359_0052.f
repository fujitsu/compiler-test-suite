      call c8
      call c16
      end

      subroutine c8
      complex a(10),b(10),c(10),d(10)
      real   x(10),y(10)

      j=1
      do i=1,10
        a(i) = cmplx(j,j+1)
        b(i) = cmplx(j+10,j+11)
        c(i) = cmplx(j+20,j+21)
        d(i) = cmplx(j+30,j+35)
        y(i) = j
        j=j+2
      enddo

      do  i=1,10
         b(i) =c(i)
         y(i) = 2+b(i)+c(i)
      enddo
      write(6,*) b
      write(6,*) y

      do  i=1,10
         b(i) = d(i)+a(i)
         y(i) = a(i)+5
         x(i) = b(i)
      enddo
      WRITE(6,*) b
      WRITE(6,*) x
      WRITE(6,*) y

      do  i=1,10
         b(i) = d(i)+a(i)
         y(i) = a(i)-3
      enddo
      WRITE(6,*) b
      WRITE(6,*)y
      end

      subroutine c16
      complex*16 a(10),b(10),c(10),d(10)
      real*8   x(10),y(10)

      j=1
      do i=1,10
        a(i) = dcmplx(j,j+1)
        b(i) = dcmplx(j+10,j+11)
        c(i) = dcmplx(j+20,j+21)
        d(i) = dcmplx(j+30,j+35)
        y(i) = j
        j=j+2
      enddo

      do  i=1,10
         b(i) =c(i)
         y(i) = 2+b(i)+c(i)
      enddo
      write(6,*) b
      write(6,*) y

      do  i=1,10
         b(i) = d(i)+a(i)
         y(i) = a(i)+5
         x(i) = b(i)
      enddo
      WRITE(6,*) b
      WRITE(6,*) x
      WRITE(6,*) y

      do  i=1,10
         b(i) = d(i)+a(i)
         y(i) = a(i)-3
      enddo
      WRITE(6,*) b
      WRITE(6,*)y
      end

