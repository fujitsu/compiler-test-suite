       integer a(6,6),b,c(10)
       print *,'***** start *****'
       b=0
  10   continue
       b=b+1
       c(b)=b
       if(b.le.3) then
         if(b.eq.3) then
           a(1,1)=777
         endif
         goto 10
       endif
       do 40 i=1,4
         c(1)=0
  20     continue
         c(1)=c(1)+1
         if(i.eq.4) then
           if(c(1).eq.3) then
             a(1,2)=777
           endif
         endif
         if(c(1).ne.3) then
           goto  20
         endif
  40   continue
       if((a(1,1).eq.777).and.(a(1,2).eq.777)) then
         print *,'***** ok *****'
       endif
       print *,'***** end *****'
       end
