      implicit integer(a-z)
      parameter (n=100)
      integer   a1(n)
      integer   a2(n)/n*13/
      data con/5/
      do 10 i=1,n
   10   a1(i)=a2(i)/con
      write(6,*) a1
      stop
      end
