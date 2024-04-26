      i=0
 10   i=i+1
      print *,'Now loop entrance.'
      if ( i > 10 ) then ; assign 89 to ia
      else               ; assign 10 to ia; endif
      goto ia
 89   i=i+1
      if ( i > 20 ) then ; assign 99 to ia
      else               ; assign 10 to ia; endif
      goto ia
 99   print *,'test end.'
      stop
      end
