      subroutine sub(sw)
      integer sw
      i=0
      do j=1,30
 10   print *,'Now dummy loop entrance.'
      i=i+1
      if ( i > 10 ) goto 89
      sw=sw+1
      goto 10
 89   i=i+1
      print *,'Now loop body.'
      if ( i > 20 ) goto 99
 33   enddo
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




