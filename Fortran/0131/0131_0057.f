c
       program   rnrst1c
       dimension iary1(-10:10,-10:10,-10:10)
       dimension iary2(-2000:0)
c
       call init( iary1, iary2 )
       isum=0
       do 100 i=0,20
         isum=isum+iary1(i-10,i-10,i-10)-iary2(i-2000)
100    continue
       if (isum.eq.55) then
         write(6,*) '*** ok ***'
       else
         write(6,*) '*** ng ***'
       endif
       stop
       end
       subroutine init( iary1, iary2 )
       integer    iary1(21,21,21)
       integer    iary2(2001)
       do 100 i=1,21
         iary1(i,i,i)=0
100    continue
       iary1( 1, 1, 1)=1
       iary1( 3, 3, 3)=2
       iary1( 9, 9, 9)=3
       iary1(12,12,12)=4
       iary1(15,15,15)=5
       iary1(18,18,18)=6
       iary1(21,21,21)=7
       iary1( 7, 7, 7)=8
       iary1(17,17,17)=9
       do 200 i=1,2001
         iary2(i)=0
200    continue
       iary2(12)=10
       iary2(14)=-10
       iary2(16)=-10
       end
