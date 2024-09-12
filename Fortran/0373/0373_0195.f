      real * 4 a(10,10),b(10,10),c(10,10)
      data a/100*1./
      data b/100*2./
      data c/20*0,20*20,20*0,20*30,20*0/

      do j=1,10
      do i=2,10
        if (c(i,j).gt.0) then
          a(i,j) = a(i,j)+b(i,j)
          if (c(i,j).gt.10) then
            a(i,j)=a(i,j)+b(i,j)
          endif
        endif
      enddo
      enddo
      write(6,*) a
      stop
      end
