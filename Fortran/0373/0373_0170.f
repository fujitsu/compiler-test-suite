      real * 4 a(2100,10),b(2100,10)
      data a/21000*1./
      data b/21000*2./
      
      do j=1,10
      do i=2,2000
        a(i,j)=a(i,j)+b(i,j)
      enddo
      enddo

      write(6,*) a
      stop
      end
