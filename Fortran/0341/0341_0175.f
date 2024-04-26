      integer a(100,100)
      do 10 i=1,100
         do 20 j=1,10
            a(i,j) = 1
 20      continue
 10   continue
      do 11 i=1,10
         do 21 j=1,10
            a(i,j) = 1
 21      continue
 11   continue
      if(a(5,5).eq.1) then
         write(6,*) "OK"
      else
         write(6,*) "NG"
      endif
      end
