      implicit integer(a-z)
      parameter (m=100)
      integer   a1(m)
      integer   a2(m)/m*19840229/
      integer   a3(m)

      do 10 i=1,m
        a3(i)=2*i
   10   a1(i)=a2(i)/a3(i)

      write(6,*) a1
      stop
      end
