      real*8 a(20)/20*1/
      do i=1,20
         a(i) = 1/sqrt(a(i))
      enddo
      write(6,*) a
      end
