      real aaa(10,10)
      ia = 1
      aaa = 1
      do 19 j=1,10
         if(j-ia)15,19,15
 15      do 20 i=1,10
            aaa(i,3)=aaa(i,3)
 20      continue
 19   continue
      do 190 j=1,10
         do 200 i=1,10
            write(6,'(f11.8)') aaa(i,3)
 200     continue
 190  continue
      end
