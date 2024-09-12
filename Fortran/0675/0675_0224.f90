      REAL*8 a(10),S
      a=1
      do i=1,10
        S=sin(a(i))
      enddo
      write(6,*)"S = ", S
      stop
      end
