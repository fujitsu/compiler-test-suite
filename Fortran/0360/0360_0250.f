      real*4 a(10),b(10)
      real*8 x(10),y(10)
      complex*8 ca(10),cb(10)
      complex*16 cx(10),cy(10)
      data b/1,-1,0,-0,2,3,-3,-2,1,-1/
      data y/1,-1,0,-0,2,3,-3,-2,1,-1/
      data cb/1,-1,0,-0,2,3,-3,-2,1,-1/
      data cy/1,-1,0,-0,2,3,-3,-2,1,-1/


      do i=1,10
         cb(i) = cmplx(real(cb(i)),i/2)
         cy(i) = cmplx(real(cy(i)),i/2)
      enddo

      do i=1,10
         a(i) = abs(b(i))
      enddo
      do i=1,10
         x(i) = abs(y(i))
      enddo
      do i=1,10
         ca(i) = abs(cb(i))
      enddo
      do i=1,10
         cx(i) = abs(cy(i))
      enddo
      write(6,*) a,x,ca,cx
      end

