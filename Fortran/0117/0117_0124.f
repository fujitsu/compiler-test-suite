      integer a(100,100),b(100,100)
      equivalence ( a(1,5),b(5,1) )
      do 10 i=1,10
         do 20 j=1,10
            a(i,j) = i + j
            b(j,i) = i + j
 20      continue
 10   continue
      do 100 i=1,10
         do 200 j=1,10
            write(6,*) a(i,j)
            write(6,*) b(j,i)
 200     continue
 100  continue
      stop
      end
