      integer a(10,10)
c
      i=1
      do 20 j=1,9
         a(i,j) = 7
 20   continue
      do 10 i=1,9
         do 11 j=1,9
            a(i,j)=1
 11      continue
 10   continue
      if(a(5,5).eq.1) then
         write(6,*) "OK"
      else
         write(6,*) "NG"
      endif
      end
      
