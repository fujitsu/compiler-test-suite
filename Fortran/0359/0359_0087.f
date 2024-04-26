      call c8
      call c16
      end

      subroutine c8
      COMPLEX*8 A(10),B(10),C(10),D(10)
      real*4 r8(10)
      j = 1
      do i=1,10
         a(i) = cmplx(i,i+2)
         b(i) = cmplx(j,j+1)
         c(i) = cmplx(j+10,j+11)
         d(i) = cmplx(i,i)
         r8(i) = i+5
         j=j+2
      enddo

      DO I = 1 , 10
         a(I) =  cmplx(real(c(i)),imag(d(i)))+b(i)
      enddo
      WRITE(6,*) (a(i),i=1,10)
      DO I = 1 , 10
         a(I) =  cmplx(imag(c(i)),real(d(i)))+b(i)
      enddo
      WRITE(6,*) (a(i),i=1,10)
      DO I = 1 , 10
         a(I) =  cmplx(real(c(i)),real(d(i)))+b(i)
      enddo
      WRITE(6,*) (a(i),i=1,10)
      DO I = 1 , 10
         a(I) =  cmplx(imag(c(i)),imag(d(i)))+b(i)
      enddo
      WRITE(6,*) (a(i),i=1,10)
      DO I = 1 , 10
         a(I) =  cmplx(real(c(i)),imag(d(i)))+c(i)+r8(i)
      enddo
      WRITE(6,*) (a(i),i=1,10)
      DO I = 1 , 10
         a(I) =  cmplx(imag(c(i)),real(d(i)))+c(i)+r8(i)
      enddo
      WRITE(6,*) (a(i),i=1,10)
      DO I = 1 , 10
         a(I) =  cmplx(real(c(i)),real(d(i)))+c(i)+r8(i)
      enddo
      WRITE(6,*) (a(i),i=1,10)
      DO I = 1 , 10
         a(I) =  cmplx(imag(c(i)),imag(d(i)))+c(i)+r8(i)
      enddo
      WRITE(6,*) (a(i),i=1,10)
      DO I = 1 , 10
         a(I) =  cmplx(real(c(i)),imag(d(i)))+d(i)+r8(i)
      enddo
      WRITE(6,*) (a(i),i=1,10)
      DO I = 1 , 10
         a(I) =  cmplx(imag(c(i)),real(d(i)))+d(i)+r8(i)
      enddo
      WRITE(6,*) (a(i),i=1,10)
      DO I = 1 , 10
         a(I) =  cmplx(real(c(i)),real(d(i)))+d(i)+r8(i)
      enddo
      WRITE(6,*) (a(i),i=1,10)
      DO I = 1 , 10
         a(I) =  cmplx(imag(c(i)),imag(d(i)))+d(i)+r8(i)
      enddo
      WRITE(6,*) (a(i),i=1,10)
      END

      subroutine c16
      COMPLEX*16 A(10),B(10),C(10),D(10)
      real*8 r8(10)
      j = 1
      do i=1,10
         a(i) = cmplx(i,i+2)
         b(i) = cmplx(j,j+1)
         c(i) = cmplx(j+10,j+11)
         d(i) = cmplx(i,i)
         r8(i) = i+5
         j=j+2
      enddo

      DO I = 1 , 10
         a(I) =  dcmplx(dreal(c(i)),dimag(d(i)))+b(i)
      enddo
      WRITE(6,*) (a(i),i=1,10)
      DO I = 1 , 10
         a(I) =  dcmplx(dimag(c(i)),dreal(d(i)))+b(i)
      enddo
      WRITE(6,*) (a(i),i=1,10)
      DO I = 1 , 10
         a(I) =  dcmplx(dreal(c(i)),dreal(d(i)))+b(i)
      enddo
      WRITE(6,*) (a(i),i=1,10)
      DO I = 1 , 10
         a(I) =  dcmplx(dimag(c(i)),dimag(d(i)))+b(i)
      enddo
      WRITE(6,*) (a(i),i=1,10)
      DO I = 1 , 10
         a(I) =  dcmplx(dreal(c(i)),dimag(d(i)))+c(i)+r8(i)
      enddo
      WRITE(6,*) (a(i),i=1,10)
      DO I = 1 , 10
         a(I) =  dcmplx(dimag(c(i)),dreal(d(i)))+c(i)+r8(i)
      enddo
      WRITE(6,*) (a(i),i=1,10)
      DO I = 1 , 10
         a(I) =  dcmplx(dreal(c(i)),dreal(d(i)))+c(i)+r8(i)
      enddo
      WRITE(6,*) (a(i),i=1,10)
      DO I = 1 , 10
         a(I) =  dcmplx(dimag(c(i)),dimag(d(i)))+c(i)+r8(i)
      enddo
      WRITE(6,*) (a(i),i=1,10)
      DO I = 1 , 10
         a(I) =  dcmplx(dreal(c(i)),dimag(d(i)))+d(i)+r8(i)
      enddo
      WRITE(6,*) (a(i),i=1,10)
      DO I = 1 , 10
         a(I) =  dcmplx(dimag(c(i)),dreal(d(i)))+d(i)+r8(i)
      enddo
      WRITE(6,*) (a(i),i=1,10)
      DO I = 1 , 10
         a(I) =  dcmplx(dreal(c(i)),dreal(d(i)))+d(i)+r8(i)
      enddo
      WRITE(6,*) (a(i),i=1,10)
      DO I = 1 , 10
         a(I) =  dcmplx(dimag(c(i)),dimag(d(i)))+d(i)+r8(i)
      enddo
      WRITE(6,*) (a(i),i=1,10)
      END
