      implicit integer(a-z)
      parameter (m=100,n=100)
      parameter (mn=m*n)
      integer   a1(m,n)/mn*13/
      integer   a2(m,n)/mn*19840229/
      integer   a3(m,n)
      logical   l(n)

      do 10 j=1,n
        l(j) = (j+1)/2 .eq. j/2
        do 10 i=1,m
          a3(i,j)=i+j
10        if(l(j)) a1(i,j)=a2(i,j)/a3(i,j)

      write(6,*) a1
      stop
      end
