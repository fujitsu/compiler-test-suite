      implicit integer(a-z)
      parameter (n=100)
      integer   a(n)
      integer   b(n)/n*1024/

      do 10 i=1,n
   10   a(i)=b(5)/i
      write(6,*) a
      stop
      end
