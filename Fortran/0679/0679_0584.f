      implicit integer(a-z)
      parameter (m=100)
      integer   a1(m)
      integer   a2(m)/m*19840229/
      integer   a3(m)
      data      k/2/

      do 10 i=1,m
        a3(i)=2*i
   10   a1(i)=a2(i)/a3(i)*k+a3(i)*10/3-k**3/4

      write(6,*) a1
      stop
      end
