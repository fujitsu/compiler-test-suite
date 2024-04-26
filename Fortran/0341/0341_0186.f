      integer a(10,10),b(10,10)
      a=10
      b=10
      c=1
      d=1
      e=10
      f=1
      do 10 i=c+d-1,e,f
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
