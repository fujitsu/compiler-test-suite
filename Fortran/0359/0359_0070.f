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
         x(i) = -i
         y(i) = i+10
         j=j+2
      enddo

      do i=1,10
         a(i) = imag(b(i)) -c(i)
      enddo
      write(6,*) a
      do i=1,10
         a(i) = b(i) - imag(c(i))
      enddo
      write(6,*) a
      do i=1,10
         a(i) =   b(i)+y(i)+imag(c(i))
      enddo
      write(6,*) a
      do i=1,10
         a(i) =   b(i)+imag(c(i))+y(i)
      enddo
      write(6,*) a
      do i=1,10
         a(i) =   x(i)+y(i)+a(i)
      enddo
      write(6,*) a
      do i=1,10
         a(i) =   x(i)+real(c(i))+a(i)
      enddo
      write(6,*) a
      do i=1,10
         a(i) =   x(i)+imag(c(i))+a(i)
      enddo
      write(6,*) a
      do i=1,10
         a(i) =   real(c(i))-x(i)+b(i)
      enddo
      write(6,*) a
      do i=1,10
         a(i) =   imag(c(i))-x(i)+b(i)
      enddo
      write(6,*) a
      do i=1,10
         b(i) = a(i) -(imag(b(i)) -imag(c(i)))
      enddo
      write(6,*) b


      end      

      subroutine c16
      complex*16 a(10),b(10),c(10),z,d(10)
      real*8 x(10),y(10)
      j = 1
      do i=1,10
         a(i) = cmplx(i,i+2)
         b(i) = cmplx(j,j+1)
         c(i) = cmplx(j+10,j+11)
         d(i) = cmplx(i,i)
         x(i) = -i
         y(i) = i+10
         j=j+2
      enddo

      do i=1,10
         a(i) = dimag(b(i)) -c(i)
      enddo
      write(6,*) a
      do i=1,10
         a(i) = b(i) - dimag(c(i))
      enddo
      write(6,*) a
      do i=1,10
         a(i) =   b(i)+y(i)+dimag(c(i))
      enddo
      write(6,*) a
      do i=1,10
         a(i) =   b(i)+dimag(c(i))+y(i)
      enddo
      write(6,*) a
      do i=1,10
         a(i) =   x(i)+y(i)+a(i)
      enddo
      write(6,*) a
      do i=1,10
         a(i) =   x(i)+dreal(c(i))+a(i)
      enddo
      write(6,*) a
      do i=1,10
         a(i) =   x(i)+dimag(c(i))+a(i)
      enddo
      write(6,*) a
      do i=1,10
         a(i) =   dreal(c(i))-x(i)+b(i)
      enddo
      write(6,*) a
      do i=1,10
         a(i) =   dimag(c(i))-x(i)+b(i)
      enddo
      write(6,*) a

      do i=1,10
         b(i) = a(i) -(imag(b(i)) -imag(c(i)))
      enddo
      write(6,*) b

      end      
