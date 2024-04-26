       program   main
       dimension iary(10,10,10)
       call init(iary,isum)
       do 300 i=1,10
         do 200 j=1,10
           do 100 k=i*j,i/j
100          isum=isum+k
           do 110 k=i/j,i*j
110          isum=isum+k
           do 120 k=mod(i,j),k/i
120          isum=isum+k
200        isum=isum+j
300      isum=isum+i
       if (isum.eq.77980) then
         write(6,*) '*** ok ***'
       else
         write(6,*) '*** ng ***'
         write(6,*) '    isum=',isum,'  (77980 is correct)'
       endif
       stop
       end
       subroutine init(iary,isum)
       integer    iary(10,10,10), isum
       isum=0
       do 100 i=1,10
         do 100 j=1,10
           do 100 k=1,10
100          iary(k,j,i)=1
       return
       end
