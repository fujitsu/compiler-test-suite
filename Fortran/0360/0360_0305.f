      real*4 a(10),b(10)
      real*8 x(10),y(10)
      complex*8 ca(10),cb(10)
      complex*16 cx(10),cy(10)
      data b/1,2,3,4,5,6,7,8,9,10/
      data y/1,2,3,4,5,6,7,8,9,10/
      data cb/1,2,3,4,5,6,7,8,9,10/
      data cy/1,2,3,4,5,6,7,8,9,10/


      do i=1,10
         cb(i) = cmplx(real(cb(i)),i/2)
         cy(i) = cmplx(real(cy(i)),i/2)
      enddo

      do i=1,10
         a(i) = sqrt(b(i))
      enddo
      do i=1,10
         x(i) = sqrt(y(i))
      enddo
      do i=1,10
         ca(i) = sqrt(cb(i))
      enddo
      do i=1,10
         cx(i) = sqrt(cy(i))
      enddo
      write(6,*) a,x,ca,cx
      end

