      program main
      parameter (n=3,m=3)
      real      b(n),c(n),a(n,m)

      do 100 i=1,n
        b(i)=-0.1
        do 10 j=1,m
          a(i,j)=-999.0
10      continue
        c(i)=-0.3
100   continue

      write(6,*) b
      write(6,*)
      write(6,*) a
      write(6,*)
      write(6,*) c
      stop
      end
