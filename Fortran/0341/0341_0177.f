      integer a(11,11),b(11,11)
      a=10
      b=10
      do 100 j=1,10
         do 10 i=1,10
            do 11 k=1,10
               b(k,i) = a(i,k)
 11         continue
 10      continue
         do 20 k=1,10
            b(k,i)=1
            a(i,k)=1
 20      continue
 100  continue
c
      if(a(5,5).eq.10) then
         if(b(5,5).eq.10) then
            write(6,*) "OK"
         else
            write(6,*) "NG"
         endif
      else
         write(6,*) "NG"
      endif
      end
