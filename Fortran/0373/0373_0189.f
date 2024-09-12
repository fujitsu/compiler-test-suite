      real * 4 a(-1:10,-1:10),b(-1:10,-1:10)
      data a/144*1./
      data b/144*2./
      
      do j=-1,10
      do i=0,10
        a(i,j)=a(i,j)+b(i,j)
      enddo
      enddo

      write(6,*) a
      stop
      end
