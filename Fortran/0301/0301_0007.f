      real * 8 a(10,10),b(10,10)
      real * 8 rr1,rr2
      data a,b/100*2.,100*3./
      rr1=1
      rr2=10
      do i=rr1,10
        do j=1,rr2
          a(i,j) = b(i,j)+a(i,j)
        enddo
      enddo
      print *,a
      end

