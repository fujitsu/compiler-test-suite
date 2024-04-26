      integer a(10),b(10)
      dimension eq1(10),eq2(10)
      equivalence (a,eq1),(b,eq2)
c
      eq1=11
      eq2=11
      do 10 i=1,10
         a(i) = 1
 10   continue
      do 11 i=1,10
         b(i) = 1
 11   continue
c
      if(a(5).eq.1) then
         if(b(5).eq.1) then
            write(6,*) "OK"
         else
            write(6,*) "NG"
         endif
      else
         write(6,*) "NG"
      endif
      end

