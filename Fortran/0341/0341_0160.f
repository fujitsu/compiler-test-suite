      integer a(10,10),b(10,10),c(10)
      a=10
      b=10
      do 100 j=1,10
         do 10 i=1,10
            do 11 k=1,10
               a(i,k)=1
               b(k,i)=1
 11         continue
 10      continue
         do 20 k=1,10
            c(10)=10
 20      continue
 100  continue
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
