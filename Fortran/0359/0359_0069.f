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
         a(i) = b(i)+real(c(i))
         b(i) = d(i)+x(i)
      enddo
      write(6,*) a
      write(6,*) b

      do i=1,10
         a(i) = b(i)+real(c(i))
         b(i) = x(i)
      enddo
      write(6,*) a
      write(6,*) b

      do i=1,10
         b(i) = (real(b(i)) +real(c(i)))-a(i)   
      enddo
      write(6,*) b

      do i=1,10
         b(i) = (imag(b(i)) -imag(c(i)))-a(i)   
      enddo
      write(6,*) b

      do i=1,10
         b(i) = cmplx(real(b(i)+a(i)) ,real(c(i)))-a(i)
      enddo
      write(6,*) b
      do i=1,10
         b(i) = cmplx(imag(b(i)+3) ,imag(c(i)+2))-a(i)
      enddo
      write(6,*) b

      do i=1,10
         b(i) = cmplx(imag(b(i))+5 ,real(c(i)+2))-a(i)
      enddo
      write(6,*) b
      return
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
         a(i) = b(i)+real(c(i))
         b(i) = d(i)+x(i)
      enddo
      write(6,*) a
      write(6,*) b

      do i=1,10
         a(i) = b(i)+real(c(i))
         b(i) = x(i)
      enddo
      write(6,*) a
      write(6,*) b

      do i=1,10
         b(i) = (dreal(b(i)) +dreal(c(i)))-a(i)   
      enddo
      write(6,*) b

      do i=1,10
         b(i) = (dimag(b(i)) -dimag(c(i)))-a(i)   
      enddo
      write(6,*) b

      do i=1,10
         b(i) = dcmplx(dreal(b(i)+a(i)) ,dreal(c(i)))-a(i)
      enddo
      write(6,*) b
      do i=1,10
         b(i) = dcmplx(dimag(b(i)+3) ,dimag(c(i)+2))-a(i)
      enddo
      write(6,*) b

      do i=1,10
         b(i) = dcmplx(dimag(b(i))+5 ,dreal(c(i)+2))-a(i)
      enddo
      write(6,*) b
      return
      end      
