      integer a(10,10),b(10,10),c(10)
      a=10
      b=10
      do 10 i=1,10
         do 11 j=1,10
            a(i,j)=1
            b(i,j)=1
 11      continue
 10   continue
      do 20 i=1,10
         c(i)=10
 20   continue
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
