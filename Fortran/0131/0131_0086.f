       integer iary(10),sary(10),ssum
       data    iary/10,9,8,7,6,5,4,3,2,1/
       data    sary/1,2,3,4,5,6,7,8,9,10/
c
       do 10 i=1,10
         iary(i)=ifun(iary(11-i))
10     continue
c
       ssum = 0
       do 15 i=1,10
         call isub(sary(i),ssum)
15     continue
       isum=0
       do 20 i=1,10
         isum=isum+iary(i)
20     continue
       if ( isum.eq.50 .and. ssum .eq. 55) then
         write(6,*) '*** ok ***'
       else
         write(6,*) '*** ng ***'
         write(6,*) isum,ssum
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
c
       subroutine isub(arg,s)
       integer  arg,s
       if (arg.gt.5) goto 200
       arg=arg+1
       goto 210
200    arg=arg-1
210    s=s+arg
       return
       end
