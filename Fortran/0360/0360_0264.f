      real*4 a(10),b(10)
      real*8 x(10),y(10)
      complex*8 ca(10),cb(10)
      complex*16 cx(10),cy(10)
      data b/0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9/
      data y/0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9/
      data cb/0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9/
      data cy/0.0,0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8,0.9/


      do i=1,10
         cb(i) = cmplx(real(cb(i)),i/2)
         cy(i) = cmplx(real(cy(i)),i/2)
      enddo

      do i=1,10
         a(i) = asind(b(i))
      enddo
      do i=1,10
         x(i) = asind(y(i))
      enddo
      write(6,*) a,x
      end

