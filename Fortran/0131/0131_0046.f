c
       program   rnr0002
       dimension iary(20)
       data      iary/10,9,8,7,6,5,4,3,2,1,0,1,2,3,4,5,6,7,8,9/
       data      iii/7/, iij/5/
c
       iary(2)=mod(iary(3),iii)*(iij+1)
       if ( iary(2).eq.6 ) then
         write(6,*) '*** ok ***'
       else
         write(6,*) '*** ng ***'
       endif
       end
