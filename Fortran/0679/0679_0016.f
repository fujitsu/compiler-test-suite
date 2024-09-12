      program main
      real a(10,10),b(11)
      data a/100*1.0/
      data b/11*1.0/

      b(11)=-0.3
      do 100 i=1,10
        b(i)=-0.1
        do 10 j=1,10
          a(i,j)=b(i+1)
10      continue
100   continue

      write(6,*) a

      stop
      end
