      integer a(10,10),b(10,10)
      dimension eq1(10),eq2(10)
      equivalence (a,eq1),(b,eq2)
c
      a=10
      a(5,5)=100
      b=10
      eq1=11
      eq2=11
      do 10 i=1,10
         a(5,i) = 1
 10   continue
      do 11 i=1,10
         b(5,i) = 1
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

