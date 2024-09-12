      real*4 a(10),b(10),c(10)
      integer*4 i
      data a/-10,-9,-8,-7,-6,-5,-4,-3,-2,-1/,c/1,2,3,4,5,6,7,8,9,10/

      do i=1,10
          b(i)=sign(c(i),a(i))
      enddo
      write(6,*) b

      stop
      end
