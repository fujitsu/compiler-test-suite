      call c8
      call c16
      end

      subroutine c8
      complex a(10),d(10),b(10)
      real   x(10),y(10)/10*3/,z,u(10),v(10),w(10)

      j=1
      do i=1,10
         z = i-3
         x(i) = 11-i
         a(i) = cmplx(i-2,i-3)
         b(i) = cmplx(j,j+1)
        d(i) = cmplx(j+20,j+31)
        j=j+2
      enddo

      do  i=1,8
          d(i) = a(i) 
          x(i) = d(i)+a(i)
          y(i) = d(i)-z
      enddo
      WRITE(6,*) d
      WRITE(6,*) x
      WRITE(6,*)y 

      do  i=1,10
          b(i) = a(i)+2
          y(i) = a(i)+3
          x(i) = a(i)+4
          u(i) = a(i)
          v(i) = a(i)
          w(i) = a(i)
      enddo
      WRITE(6,*) b
      WRITE(6,*) d
      WRITE(6,*) x
      WRITE(6,*)y
      WRITE(6,*)u
      WRITE(6,*)v
      WRITE(6,*)w

      end

      subroutine c16
      complex*16 a(10),d(10),b(10)
      real*8   x(10),y(10)/10*3/,z,u(10),v(10),w(10)

      j=1
      do i=1,10
         z = i-3
         x(i) = 11-i
         a(i) = cmplx(i-2,i-3)
         b(i) = cmplx(j,j+1)
        d(i) = cmplx(j+20,j+31)
        j=j+2
      enddo

      do  i=1,8
          d(i) = a(i) 
          x(i) = d(i)+a(i)
          y(i) = d(i)-z
      enddo
      WRITE(6,*) d
      WRITE(6,*) x
      WRITE(6,*)y 

      do  i=1,10
          b(i) = a(i)+2
          y(i) = a(i)+3
          x(i) = a(i)+4
          u(i) = a(i)
          v(i) = a(i)
          w(i) = a(i)
      enddo
      WRITE(6,*) b
      WRITE(6,*) d
      WRITE(6,*) x
      WRITE(6,*)y
      WRITE(6,*)u
      WRITE(6,*)v
      WRITE(6,*)w

      end
