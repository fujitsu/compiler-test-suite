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
         a(i) =   b(i)+real(c(i))+imag(a(i))
         d(i) =   b(i)+real(c(i))+imag(d(i))
      enddo
      write(6,*) a
      write(6,*) d
      do i=1,10
         a(i) =   b(i)+real(c(i))+imag(b(i))
      enddo
      write(6,*) a
      do i=1,10
         a(i) =   imag(b(i))+real(c(i))+imag(b(i))
         d(i) =   d(i)+real(c(i))
      enddo
      write(6,*) a
      write(6,*) d
      do i=1,10
         a(i) =   cmplx(imag(b(i)),real(c(i)))
         d(i) =   d(i)+c(i)
      enddo
      write(6,*) a
      write(6,*) d
      do i=1,10
         a(i) =   cmplx(imag(b(i)),real(c(i)))-c(i)
         d(i) =   d(i)+c(i)
      enddo
      write(6,*) a
      write(6,*) d
      do i=1,10
         a(i) =   cmplx(imag(b(i)+2),real(c(i)-3))-c(i)
         d(i) =   d(i)+c(i)
      enddo
      write(6,*) a
      write(6,*) d
      do i=1,10
         a(i) =   real(c(i))-c(i)
      enddo
      write(6,*) a
      do i=1,10
         a(i) =   c(i)+real(c(i))
      enddo
      write(6,*) a
      do i=1,10
         a(i) =   imag(c(i))-c(i)
      enddo
      write(6,*) a
      do i=1,10
         a(i) =   c(i)+imag(c(i))
      enddo
      write(6,*) a
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
         x(i) = -i
         y(i) = i+10
         j=j+2
      enddo

      do i=1,10
         a(i) =   b(i)+dreal(c(i))+dimag(a(i))
         d(i) =   b(i)+dreal(c(i))+dimag(d(i))
      enddo
      write(6,*) a
      write(6,*) d
      do i=1,10
         a(i) =   b(i)+dreal(c(i))+dimag(b(i))
      enddo
      write(6,*) a
      do i=1,10
         a(i) =   dimag(b(i))+dreal(c(i))+dimag(b(i))
         d(i) =   d(i)+dreal(c(i))
      enddo
      write(6,*) a
      write(6,*) d
      do i=1,10
         a(i) =   dcmplx(dimag(b(i)),dreal(c(i)))
         d(i) =   d(i)+c(i)
      enddo
      write(6,*) a
      write(6,*) d
      do i=1,10
         a(i) =   dcmplx(dimag(b(i)),dreal(c(i)))-c(i)
         d(i) =   d(i)+c(i)
      enddo
      write(6,*) a
      write(6,*) d
      do i=1,10
         a(i) =   dcmplx(dimag(b(i)+2),dreal(c(i)-3))-c(i)
         d(i) =   d(i)+c(i)
      enddo
      write(6,*) a
      write(6,*) d
      do i=1,10
         a(i) =   dreal(c(i))-c(i)
      enddo
      write(6,*) a
      do i=1,10
         a(i) =   c(i)+dreal(c(i))
      enddo
      write(6,*) a
      do i=1,10
         a(i) =   dimag(c(i))-c(i)
      enddo
      write(6,*) a
      do i=1,10
         a(i) =   c(i)+dimag(c(i))
      enddo
      write(6,*) a
      end      
