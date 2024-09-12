      integer*4 b(10),c(10),i,d
      integer*8 a(10)
      data a/-10,-9,-8,-7,-6,-5,-4,-3,-2,-1/,c/1,2,3,4,5,6,7,8,9,10/

      do i=1,10
        b(i)=a(i)/c(i)
      enddo
      write(6,*) b

      do i=1,10
        b(i)=a(i)/i
      enddo
      write(6,*) b

      do i=1,10
        b(i)=i/a(i)
      enddo
      write(6,*) b

      d = a(5)+c(1)
      do i=1,10
        b(i)=a(i)/d
      enddo
      write(6,*) b

      do i=1,10
        if (a(i) > 5) then
          b(i)=a(i)/c(i)
        else
          b(i)=c(i)/a(i)
        endif
      enddo
      write(6,*) b

      stop
      end
