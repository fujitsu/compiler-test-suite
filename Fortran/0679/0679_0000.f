      program main
      parameter (l1=10,l2=10)
      real a(l1,l2)

      do 1 i=1,l1
      do 1 j=1,l2
        a(i,j)=i+j
1     continue

      do 10 i=1,l1-1
      do 10 j=2,l2
        a(i,j)=a(i+1,j-1)
10    continue

      write(6,*) a

      stop
      end
