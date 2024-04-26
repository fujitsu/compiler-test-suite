      integer a(-10:10,-10:10)
      a=10
      do 10 i=10,2,-1
         a(5,-i) = 1
 10   continue
      do 11 i=10,2,-1
         a(5,i) = 1
 11   continue
      if(a(5,5).eq.1) then
         write(6,*) "OK"
      else
         write(6,*) "NG"
      endif
      end
