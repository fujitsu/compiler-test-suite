      program main
      parameter (l=3,m=3,n=3)
      real      c(n),a(l,m,n)

      do 100 i=1,l
        do 10 j=1,m
        do 10 k=1,n
          a(i,j,k)=-999.0
10      continue
        c(i)=-0.3
100   continue

      write(6,*) a
      write(6,*)
      write(6,*) c
      stop
      end
