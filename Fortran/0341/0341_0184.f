      integer a(5,5),b(5)
      a=10
      b(1)=1
      b(2)=2
      b(3)=3
      b(4)=4
      b(5)=5
      do 10 i=1,5
         a(5,b(i)) = 1
 10   continue
      do 11 i=1,5
         a(5,b(i)) = 1
 11   continue
      if(a(5,5).eq.1) then
         if(b(5).eq.5) then
            write(6,*) "OK"
         else
            write(6,*) "NG"
         endif
      else
         write(6,*) "NG"
      endif
      end
