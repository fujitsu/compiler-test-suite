      implicit integer(a-z)
      parameter (n=100)
      logical   l(n)

      do 10 i=1,n
   10   l(i)=mod(i,2).eq.0

      write(6,*) l
      stop
      end
