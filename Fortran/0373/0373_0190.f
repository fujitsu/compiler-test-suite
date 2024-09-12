      real * 4 a(0:10,0:10),b(0:10,0:10)
      data a/121*1./
      data b/121*2./
      
      do j=0,10
      do i=1,9
        a(i,j)=a(i,j)+b(i,j)
      enddo
      enddo

      write(6,*) a
      stop
      end
