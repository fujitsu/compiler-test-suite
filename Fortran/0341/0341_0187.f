      integer a(10,10),b(10,10)
      a=10
      b=10
      j=1
      k=1
      do 10 i=1,10
         a(5,i) = 1
 10   continue
      do 11 i=2,10
         b(5,i) = 1
 11   continue
      do 12 i=j,10
         a(5,j) = 1
 12   continue
      do 13 i=k,10
         b(5,j) = 1
 13   continue
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
