      call c8
      call c16
      end

      subroutine c8
      complex*8 a(10),b(10),c(10),z,d(10),e(10)
      real*4 x(10),y(10)
      j = 1
      do i=1,10
         a(i) = cmplx(i,i+2)
         b(i) = cmplx(j,j+1)
         c(i) = cmplx(j+10,j+11)
         d(i) = cmplx(i,i)
         e(i) = cmplx(j,j+1)
         x(i) = -i
         y(i) = i+10
         j=j+2
      enddo

      do i=1,10
         a(i) = c(i)+cmplx(real(b(i)),real(d(i)))+x(i)
         d(i) = d(i) + x(i)
      enddo
      write(6,*) a
      write(6,*) d
      do i=1,10
         a(i) =   imag(c(i))-c(i)+x(i)
          d(i) =   d(i)+c(i)-x(i)
      enddo
      write(6,*) a
      write(6,*) d
      do i=1,10
         a(i) =   imag(c(i))-c(i)+x(i)
      enddo
      write(6,*) a

      do i=1,10
         a(i) =   imag(c(i))-c(i)+x(i)
         d(i) =   c(i)
      enddo
      write(6,*) a
      write(6,*) d

      do i=1,10
         a(i) =   imag(c(i))+(5.,6.)+c(i)
      enddo
      write(6,*) a
      write(6,*) d

      do i=1,10
         a(i) =   imag(c(i))+(5.,6.)
          d(i) =  c(i)-x(i)
      enddo
      write(6,*) a
      write(6,*) d
      do i=1,10
         a(i) =   real(c(i))-c(i)+x(i)
          d(i) =   d(i)+c(i)-x(i)
      enddo
      write(6,*) a
      write(6,*) d
      do i=1,10
         a(i) =   real(c(i))-c(i)+x(i)
      enddo
      write(6,*) a

      do i=1,10
         a(i) =   real(c(i))-c(i)+x(i)
         d(i) =   c(i)
      enddo
      write(6,*) a
      write(6,*) d

      do i=1,10
         a(i) =   real(c(i))+(5.,6.)+c(i)
      enddo
      write(6,*) a
      write(6,*) d

      do i=1,10
         a(i) =   real(c(i))+(5.,6.)
          d(i) =  c(i)-x(i)
      enddo
      write(6,*) a
      write(6,*) d

      end      

      subroutine c16
      complex*16 a(10),b(10),c(10),z,d(10),e(10)
      real*8 x(10),y(10)
      j = 1
      do i=1,10
         a(i) = cmplx(i,i+2)
         b(i) = cmplx(j,j+1)
         c(i) = cmplx(j+10,j+11)
         d(i) = cmplx(i,i)
         e(i) = cmplx(j,j+1)
         x(i) = -i
         y(i) = i+10
         j=j+2
      enddo

      do i=1,10
         a(i) = c(i)+dcmplx(dreal(b(i)),dreal(d(i)))+x(i)
         d(i) = d(i) + x(i)
      enddo
      write(6,*) a
      write(6,*) d
      do i=1,10
         a(i) =   dimag(c(i))-c(i)+x(i)
          d(i) =   d(i)+c(i)-x(i)
      enddo
      write(6,*) a
      write(6,*) d
      do i=1,10
         a(i) =   dimag(c(i))-c(i)+x(i)
      enddo
      write(6,*) a

      do i=1,10
         a(i) =   dimag(c(i))-c(i)+x(i)
         d(i) =   c(i)
      enddo
      write(6,*) a
      write(6,*) d

      do i=1,10
         a(i) =   dimag(c(i))+(5.,6.)+c(i)
      enddo
      write(6,*) a
      write(6,*) d

      do i=1,10
         a(i) =   dimag(c(i))+(5.,6.)
          d(i) =  c(i)-x(i)
      enddo
      write(6,*) a
      write(6,*) d
      do i=1,10
         a(i) =   dreal(c(i))-c(i)+x(i)
          d(i) =   d(i)+c(i)-x(i)
      enddo
      write(6,*) a
      write(6,*) d
      do i=1,10
         a(i) =   dreal(c(i))-c(i)+x(i)
      enddo
      write(6,*) a

      do i=1,10
         a(i) =   dreal(c(i))-c(i)+x(i)
         d(i) =   c(i)
      enddo
      write(6,*) a
      write(6,*) d

      do i=1,10
         a(i) =   dreal(c(i))+(5.,6.)+c(i)
      enddo
      write(6,*) a
      write(6,*) d

      do i=1,10
         a(i) =   dreal(c(i))+(5.,6.)
          d(i) =  c(i)-x(i)
      enddo
      write(6,*) a
      write(6,*) d

      end      
