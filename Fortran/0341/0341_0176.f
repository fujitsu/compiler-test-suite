      integer a(10)
      do 10 i=1,10
         a(i) = 1
 10   continue
 100  do 11 i=1,10
         a(i) = 1
 11   continue
      if( a(10)==10 ) then
         goto 100
      endif
      if(a(5).eq.1) then
         write(6,*) "OK"
      else
         write(6,*) "NG"
      endif
      end
