      logical l4
      integer ans,iary(2),inext
      ans=1
      l4 = .true.
      inext=1
      iary(1)=-1
      iary(2)=1
 8    goto 71
 9    if( l4 .and. .true. ) then
        ans = ans*0
      endif
      goto 76
 71   print *,' 71 now'
      go to 9999
 76   if(iary(inext).lt. 0) then
        goto 96
      endif
      goto 9999
 96   print *,' 96 now'
 9999 inext=inext+1
      goto (8,9) inext
      stop
      end

