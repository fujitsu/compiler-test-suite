      integer*4 b(10),c(10),i
      integer*4 a(10)
      data a/-10,-9,-8,-7,-6,-5,-4,-3,-2,-1/,c/1,2,3,4,5,6,7,8,9,10/

      do i=1,10
          b(i)=a(i)/c(i)
      enddo
      write(6,*) b

      do i=1,10
          a(i)=a(i)*i
          c(i)=a(i)+c(i)+1
          b(i)=a(i)/c(i)
      enddo
      write(6,*) b

      stop
      end
