      program main
      parameter (l=3,m=3,n=3)
      real      a(l,m,n),b(l,m),c(l),d(l)

      do 1000 i=1,l
        c(i)=-13.0
        do 100 j=1,m
          b(i,j)=-0.33
          do 10 k=1,n
            a(i,j,k)=-999.0
10        continue
100     continue
        d(i)=-57.0
1000  continue


      write(6,*) a
      write(6,*)
      write(6,*) b
      write(6,*)
      write(6,*) c
      write(6,*)
      write(6,*) d
      stop
      end
