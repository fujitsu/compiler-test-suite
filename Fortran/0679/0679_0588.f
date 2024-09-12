      implicit integer(a-z)
      parameter (n=100)
      integer   a1(n)
      integer   a2(n)/n*13/
      real*8   q1(n)
      real*8   q2(n)/n*1.0/
      real*8   q3(n)/n*1.0/
      data con/5/

      do 10 i=1,n
        q1(i)=q2(i)+q3(i)
   10   a1(i)=a2(i)/con

      write(6,*) a1
      stop
      end
