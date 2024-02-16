      integer a(100)/100*0/
      k=1
      do 40 j=1,10
         do 30 i=1,k
            a(i) = 1
 30      continue
         k=k+1
 40   continue
      do 400 j=1,10
         do 300 i=1,k
            write(6,*) a(i)
 300     continue
 400  continue
      end
