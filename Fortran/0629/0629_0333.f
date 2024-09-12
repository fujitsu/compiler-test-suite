      real*4 a(100) /100*1.0/
      s=0.0
      do j=1,10
        do i=1,100
          s = s + a(i)
        enddo
      enddo
      print*, s
      end
