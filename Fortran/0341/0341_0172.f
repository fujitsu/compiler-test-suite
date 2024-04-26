      integer a(10,10),b(10,10),c(10)
      c=1
      do 10 i=1,10
         do 20 j=1,10
            a(c(i),j) = 1
            b(i,j) = 1
 20      continue
 10   continue
      do 11 i=1,10
         do 21 j=1,10
            a(i,j) = 1
            b(i,j) = 1
 21      continue
 11   continue
      if(a(5,5).eq.1) then
         if(b(5,5).eq.1) then
            write(6,*) "OK"
         else
            write(6,*) "NG"
         endif
      else
         write(6,*) "NG"
      endif
      end
