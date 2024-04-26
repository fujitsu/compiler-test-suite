      integer a(10,10),b(10,10),c(10,10),d(10,10)
      a=1
      b=1
      c=1
      d=1
      do 10 i=1,10
         a(i,1) = 10
         c(i,1) = 10
         do 20 j=1,10
            b(i,j) = 10
            d(i,j) = 10
 20      continue
 10   continue
      do 30 j=1,10
         a(1,j) = c(1,j)
         b(1,j) = 10
 30   continue
      if(a(1,1).eq.10) then
         if(b(1,1).eq.10) then
            if(c(1,1).eq.10) then
               if(d(1,1).eq.10) then
                  write(6,*) "OK"
               else
                  write(6,*) "NG"
               endif
            else
               write(6,*) "NG"
            endif
         else
            write(6,*) "NG"
         endif
      else
         write(6,*) "NG"
      endif
      end
