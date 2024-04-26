      integer a(15,15)
      a=10
      do 10 i=1,10
         a(i,1) = 1
 10   continue
      a=11
      do 11 i=1,10
         a(11,1) = 1
         a(5,1)  = 1
         a(i+1,1) = 1
 11   continue

      do 20 i=1,10
         do 21 j=i,10
            a(i,j) = 1
 21      continue
 20   continue
      do 30 i=1,10
         do 31 j=i,10
            a(j,i) = 1
 31      continue
 30   continue

      do 40 i=1,10
         do 41 j=i,1,-1
            a(i,j) = 1
 41      continue
 40   continue
      do 50 i=1,10
         do 51 j=i,1,-1
            a(j,i) = 1
 51      continue
 50   continue

      if(a(5,5).eq.1) then
         write(6,*) "OK"
      else
         write(6,*) "NG"
      endif
      end
