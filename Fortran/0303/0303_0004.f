      complex*8 x/2/,a(10)/10*1/
      do i=1,10
         x = x + a(i)
      enddo
      write(6,*) x
      end
