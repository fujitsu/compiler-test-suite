      REAL*8 a(10),s
      a=1
      do i=1,10
        s=i*3
        a(i)=sin(s)
      enddo
      write(6,*)"s = ",s 
      write(6,*)"a = ",a
      stop
      end
