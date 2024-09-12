      implicit integer(a-z)
      parameter (m=100,n=100,large=55555)
      integer   a1(m,n)
      integer   b1(m,n)

      do 10 j=1,n
      do 10 i=1,m
        a1(i,j)=large*i/j/i/j
   10   b1(i,j)=large*i/j/i/j/i/j/i/j/i

      write(6,*) '#########  a1= ',a1
      write(6,*) '#########  b1= ',b1
      stop
      end
