      implicit integer(a-z)
      parameter (n=100)
      integer   a(n)
      integer   b(n)/n*3/

      do 10 i=1,n
   10   a(i)=i/b(i)

      write(6,*) a
      stop
      end
