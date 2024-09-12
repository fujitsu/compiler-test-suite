      implicit integer(a-z)
      parameter (m=100,n=100)
      parameter (mn=m*n)
      integer   a1(m,n)
      integer   a2(m,n)/mn*113/
      integer   a3(n)
      do 10 j=1,n
        a3(j)=j
        do 10 i=1,m
   10     a1(i,j)=a2(i,j)/a3(j)
      write(6,*) a1
      stop
      end
