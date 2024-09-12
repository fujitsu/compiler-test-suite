      implicit integer(a-z)
      parameter (n=100)
      integer   a1(n),b1(n)
      integer   a2(n)/n*13/
      integer   a3(n)/n*7/
      do 10 i=1,n
        a1(i)=mod(a2(i),a3(i))
   10   b1(i)=a2(i)/a3(i)+mod(a2(i),a3(i))
      write(6,*) '###mod### a1(i)= ',a1
      write(6,*) '#div/mod# b1(i)= ',b1
      stop
      end
