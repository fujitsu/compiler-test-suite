      integer ev
      ev=0
      goto 1
 4    if ( ev.ne.5 ) goto 1
      print *,'non exec'
 1    continue
 10   if ( ev.ne.5 ) goto 3
      if ( ev.eq.10 ) goto 3
      goto 1
 3    if ( ev.eq.10 ) goto 99
      ev=ev+1
      if ( ev.ne.5 ) goto 3
      ev=ev+1
      goto 3
 99   continue
      print *,'test end', ev
      stop
      end
      
