      real*4 a(10),b(10)
      real*8 x(10),y(10)
      complex*8 ca(10),cb(10)
      complex*16 cx(10),cy(10)
      data b/0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9/
      data y/0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9/
      data cb/0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9/
      data cy/0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9/

      CHARACTER(LEN=30) :: FMT_A, FMT_X, FMT_CA, FMT_CX
      FMT_A = '(10(F16.8,1X))'
      FMT_X = '(10(F22.14,1X))'
      FMT_CA = '(10(F16.8,1X,F16.8,1X))'
      FMT_CX = '(10(F22.14,1X,F22.14,1X))'

      do i=1,10
         cb(i) = cmplx(real(cb(i)),i/2)
         cy(i) = cmplx(real(cy(i)),i/2)
      enddo

      do i=1,10
         a(i) = tanh(b(i))
      enddo
      do i=1,10
         x(i) = tanh(y(i))
      enddo
      do i=1,10
         ca(i) = tanh(cb(i))
      enddo
      do i=1,10
         cx(i) = tanh(cy(i))
      enddo

      write(6,FMT_A) a
      write(6,FMT_X) x
      write(6,FMT_CA) ca
      write(6,FMT_CX) cx
      
      end

