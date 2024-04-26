      integer*4 a(10),b(10)
      integer*8 x(10),y(10)

      data b/1,2,3,4,5,-6,-7,-8,-9,-10/
      data y/-1,-2,-3,-4,-5,6,7,8,9,10/

      do i=1,10
         a(i) = ishft(b(i),2)
      enddo
      do i=1,10
         x(i) = ishft(y(i),2)
      enddo
      write(6,*) a,x
      do i=1,10
         a(i) = ishft(b(i),y(i))
      enddo
      do i=1,10
         x(i) = ishft(y(i),b(i))
      enddo
      write(6,*) a,x
      end

