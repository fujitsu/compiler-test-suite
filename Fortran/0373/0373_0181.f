      real * 4 a(10,10),b(10,10),s
      data a/100*2./
      data b/100*3./

      s = 0 
      do j=1,10
      do i=2,9
        a(i,j) = a(i,j)+b(i,j)
        s = a(i,j)
      enddo
      enddo
      write(6,*) s
      stop
      end
