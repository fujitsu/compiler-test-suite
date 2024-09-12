      real * 4 a(10,10),b(10,10)
      data a/100*1./
      data b/100*2./
      
      do j=1,10
      do i=2,10
        a(i,j)=a(i,j)+b(i,j)
      enddo
      enddo

      write(6,*) a
      stop
      end
