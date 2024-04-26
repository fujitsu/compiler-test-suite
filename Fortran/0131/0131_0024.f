*
       integer       i,j,k
       integer       scommo
       integer       sequs1,sequs2
*
       equivalence (sequs1,sequs2)
       common  /cname/scommo
*
       scommo= 1
       sequs1 = 2
       sequs2 = sequs1 + 3
       j=0
       k=0
       do 10 i=1,20
         j=j+3
         k=k+3
         sequs1 = sequs1 + 1
         if( k.eq.9 ) then
           scommo = j
           sequs2 = k+j
         endif
         call sub(k,sequs2)
10     continue
       k=k+sequs1
       j=j+scommo
       if( j.eq.1 .and. k.eq.45 ) then
         write( 6,* ) ' ******** ok ********'
       else
         write( 6,* ) ' ******** ng ********'
       endif
       stop
       end
*
       subroutine sub(x,y)
       integer       x,y
       integer       scommo
       common   /cname/scommo
       x=x-3
       y=y+1
       scommo = scommo - 3
       end
