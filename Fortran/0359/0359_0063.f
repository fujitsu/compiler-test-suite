      call c8
      call c16
      end

      subroutine c8
      complex a(10),b(10),d(10)
      real   x(10),y(10)

      j=1
      do i=1,10
         x(i) = 11-i
         a(i) = cmplx(j,j+1)
        b(i) = cmplx(j+10,j+11) 
        d(i) = cmplx(j+30,j+41)
        j=j+2
      enddo

      do  i=1,10
         b(i) = d(i)+a(i)+3
         x(i) = b(i)+5+d(2)
         y(i) = a(i)-3
      enddo
      WRITE(6,*) b
      WRITE(6,*) d
      WRITE(6,*) x
      WRITE(6,*)y 

      do  i=1,10
         b(i) = a(i)+2
         y(i) = a(i)+5
      enddo
      WRITE(6,*) b
      WRITE(6,*) d
      WRITE(6,*) x
      WRITE(6,*)y

      do  i=1,10
         b(i) = a(i)+2
         y(i) = a(i)+5
         d(i) = a(i)+8
      enddo
      WRITE(6,*) b
      WRITE(6,*) d
      WRITE(6,*) x
      WRITE(6,*)y

      do  i=1,10
           b(i) = d(i)+a(i)
          x(i) = b(i)-3
          y(i) = a(i)-3
      enddo
      WRITE(6,*) b
      WRITE(6,*) d
      WRITE(6,*) x
      WRITE(6,*)y

      do  i=1,10
         b(i) = a(i)-(2.,3.)
         d(i) = a(i)-(8.,3.)
      enddo
      WRITE(6,*) b
      WRITE(6,*) d

      end

      subroutine c16
      complex*16 a(10),b(10),d(10)
      real*8   x(10),y(10)

      j=1
      do i=1,10
         x(i) = 11-i
         a(i) = dcmplx(j,j+1)
        b(i) = dcmplx(j+10,j+11) 
        d(i) = dcmplx(j+30,j+41)
        j=j+2
      enddo

      do  i=1,10
         b(i) = d(i)+a(i)+3
         x(i) = b(i)+5+d(2)
         y(i) = a(i)-3
      enddo
      WRITE(6,*) b
      WRITE(6,*) d
      WRITE(6,*) x
      WRITE(6,*)y 

      do  i=1,10
         b(i) = a(i)+2
         y(i) = a(i)+5
      enddo
      WRITE(6,*) b
      WRITE(6,*) d
      WRITE(6,*) x
      WRITE(6,*)y

      do  i=1,10
         b(i) = a(i)+2
         y(i) = a(i)+5
         d(i) = a(i)+8
      enddo
      WRITE(6,*) b
      WRITE(6,*) d
      WRITE(6,*) x
      WRITE(6,*)y

      do  i=1,10
           b(i) = d(i)+a(i)
          x(i) = b(i)-3
          y(i) = a(i)-3
      enddo
      WRITE(6,*) b
      WRITE(6,*) d
      WRITE(6,*) x
      WRITE(6,*)y

      do  i=1,10
         b(i) = a(i)-(2.,3.)
         d(i) = a(i)-(8.,3.)
      enddo
      WRITE(6,*) b
      WRITE(6,*) d

      end
