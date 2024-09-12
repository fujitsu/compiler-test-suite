      real * 4 a(10,10),b(10,10)
      integer * 4 n(10)
      data a/100*1./
      data b/100*2./
      data n/1,2,3,4,5,6,7,8,9,10/
      
      do j=1,n(10)
      do i=2,n(9)
        a(i,j)=a(i,j)+b(i,j)
      enddo
      enddo

      write(6,*) a
      stop
      end
