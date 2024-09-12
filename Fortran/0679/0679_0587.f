      implicit integer(a-z)
      parameter (n=5)
      integer   a(n)/n*2/
      integer   b(n)/n*3/
      integer   c(n)/n*3/
      data s/2/

      do 10 i=1,n
   10   s=s*a(i)/b(i)*c(i)

      write(6,*) ' s< n=',n,'>=   ',s
      stop
      end
