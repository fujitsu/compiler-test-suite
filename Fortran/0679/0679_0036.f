      program main
      parameter (l1=10,l2=10,l3=10,l4=10,l5=10)
      real      a(l1,l2,l3,l4,l5)
      data  idx1/10/,idx2/10/
      data  a/100000*0./
      do 5  i=1,idx1
      do 4  j=1,idx2
      do 3  k=1,7
      do 2  l=1,7
      do 1  m=1,7
          a(i,j,k,l,m)=-999.0
1     continue
2     continue
3     continue
4     continue
5     continue

      write(6,*) a(2,2,2,2,2)
      stop
      end
