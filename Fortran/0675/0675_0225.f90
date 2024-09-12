      REAL*8 a(10),b(10),c
      b=1
      c=5
      do i=1,10
        a(i) = b(i)**c
      enddo
      write(6,*)"a = ", a
      stop
      end
