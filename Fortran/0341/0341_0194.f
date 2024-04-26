      integer a(20,20)
      a=1
c
      do 10 i=1,10
         do 20 j=1,10
            a(i,j) = 1
 20      continue
 10   continue
      do 21 j=1,10
         a(i,j) = a(i+1,j+1)
 21   continue
c
      if(a(5,5).eq.1) then
         write(6,*) "OK"
      else
         write(6,*) "NG"
      endif
      end
