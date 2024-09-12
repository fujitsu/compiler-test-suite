      REAL*8 a(10),b(10)
      a=0
      b=1
      do i=1,10
        a(i)=a(i)+sin(b(i))
      enddo
      write(6,*)"a = ", a
      stop
      end

