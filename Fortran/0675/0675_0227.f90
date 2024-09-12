      REAL*8 a(10),b(10),c(10),S
      a=0
      b=1
      c=2
      do i=1,10
        s=i*3
        a(i)=a(i)+sin(b(i)+C(i)+s+i)
      enddo
      write(6,*)"a = ", a
      write(6,*)"b = ", b
      write(6,*)"c = ", c
      write(6,*)"s = ", s
      stop
      end
