      i=0
 10   i=i+1
      if ( i.gt.10 ) goto 99
      print *,'Now loop entrance.'
      if ( i.lt.2 ) goto 10
      if ( i.lt.5 ) goto 10
      if ( i.lt.7 ) goto 10
      if ( i.lt.9 ) goto 10
      goto 10
 99   print *,'test end.'
      stop
      end

