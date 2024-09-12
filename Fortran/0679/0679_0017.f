      program main
      parameter (l=10,m=10,n=10)
      real      b(n),a(l,m,n),c(l,m)

      do 100 i=1,l
        b(i)=-0.1
        do 10 j=1,m
          c(i,j)=-0.7
        do 1  k=1,n
          a(i,j,k)=-999.0
1       continue
10      continue
100   continue

      write(6,*) b
      write(6,*)
      write(6,*) c
      write(6,*)
      write(6,*) a
      stop
      end
