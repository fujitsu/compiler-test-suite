      integer a(10,10),b(10,10)
      a=10
      b=10
c
      do 100 k=1,10
         if( a(1,1) .eq. b(1,1)) goto 20
         do 10 i=1,10
            a(5,i) = 1
 10      continue
 20      continue   
         do 11 i=1,10
            b(5,i) = 1
 11      continue
 100  continue
      if(a(5,5).eq.10) then
         if(b(5,5).eq.1) then
            write(6,*) "OK"
         else
            write(6,*) "NG"
         endif
      else
         write(6,*) "NG"
      endif
      end
