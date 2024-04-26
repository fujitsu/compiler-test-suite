c
       program rnrst1f
       integer iary(10)
       data    iary/ 4, -2, 5, 0, 0, 3, -8, -5, 0, 2 /
       assign 100 to label
       assign 200 to lend
       do 10 i=1,10
         goto (20, 30, 40) iary(i)
 20      iary(i)=iabs(iary(i))
         assign 110 to label
         goto 10
 30      assign 120 to label
         goto 10
 40      iary(i)=1
         assign 130 to label
 10    continue
       goto label (100,110,120,130)
100    call disp( iary,1 )
       goto lend
110    call disp( iary,3 )
       goto lend
120    call disp( iary,5 )
       goto lend
130    call disp( iary,7 )
       goto lend
200    stop
       end
       subroutine disp(iary,i)
         integer  iary(10)
         if (i.eq.5 .and. iary(i).eq.0) then
           write(6,*) '*** ok ***'
         else
           write(6,*) '*** ng ***'
         endif
       return
       end
