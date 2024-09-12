      program main
      implicit integer(a-z)
      parameter (n=100)
      integer   a(n)
      integer   b(n)/n*2/

      do 10 i=1,n
   10   a(i)=i/b(5)
      write(6,*) a
      stop
      end
