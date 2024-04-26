      integer a(10,10)
      a=10
      b=10
      do 100 j=1,2
         do 10 i=1,2
            do 11 k=1,2
               a(i,k) = 1
 11         continue
 10      continue
         do 20 k=1,2
            write(6,*) a(1,k)
 20      continue
 100  continue

      if(a(2,2).eq.1) then
         write(6,*) "OK"
      else
         write(6,*) "NG"
      endif
      end
