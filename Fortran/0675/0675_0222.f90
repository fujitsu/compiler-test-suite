      REAL*8 a(10),b(10)
      DATA b/1,2,3,4,5,6,7,8,9,10/
      do i=1,10
        a(i) = sin(b(i))
      enddo
      write(6,*)"a = ", a
      stop
      end
