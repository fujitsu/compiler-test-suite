      subroutine sub(sw)
      integer sw
      i=0
      if ( sw ) 10,100,100
 10   i=i+1
      sw=sw+1
      print *,'Now loop entrance.'
      if ( i > 10 ) goto 89
      goto 10
 89   i=i+1
      if ( i > 20 ) goto 99
      if ( sw ) 100,100,10
 99   print *,'test end.'
      return 
 100  print *,'NG may be tp miss.'
      return 
      end
      integer sw
      sw=-10
      call sub(sw)
      stop
      end



