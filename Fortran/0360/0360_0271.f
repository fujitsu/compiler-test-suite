      real*4 a(10),b(10)
      real*8 x(10),y(10)
      complex*8 ca(10),cb(10)
      complex*16 cx(10),cy(10)
      data a/10*2/
      data x/10*2/
      data ca/10*2/
      data cx/10*2/
      data b/1,2,3,4,5,6,7,8,9,10/
      data y/1,2,3,4,5,6,7,8,9,10/
      data cb/1,2,3,4,5,6,7,8,9,10/
      data cy/1,2,3,4,5,6,7,8,9,10/

      do i=1,10
         a(i) = atan2d(a(i),b(i))
      enddo
      do i=1,10
         x(i) = atan2d(x(i),y(i))
      enddo
      write(6,*) a,x
      end

