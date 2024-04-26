c
       program rnrst03
       integer iary(10)
       data    iary/10,9,8,7,6,5,4,3,2,1/
       do 10 i=1,10
         iary(i)=ifun(iary(11-i))
10     continue
       isum=0
       do 20 i=1,10
         isum=isum+iary(i)
20     continue
       if ( isum.eq.50 ) then
         write(6,*) '*** ok ***'
       else
         write(6,*) '*** ng ***'
         write(6,*) isum
       endif
       stop
       end
c
       function ifun( iarg )
       integer  ifun, iarg
       if (iarg.gt.10) goto 100
       iarg=iarg+1
       goto 110
100    continue
       iarg=iarg-1
110    ifun=iarg
       return
       end
