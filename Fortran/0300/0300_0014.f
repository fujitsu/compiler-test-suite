      real * 4 a(10),b(10),c(10),s
      data a/1,0,0,1,1,0,1,1,1,0/
      data b/1,2,3,4,5,6,7,8,9,10/
      data c/10*3./
      do i=1,10
        if (a(i).gt.0) then
          s=b(i)+c(i)
        endif
      enddo
      write(6,*) s
      stop
      end
