      subroutine sub(sw)
      integer sw
      i=0
      if ( sw==1 ) then; assign 10 to ia
      else             ; assign 100 to ia; endif
      goto ia
 10   i=i+1
      print *,'Now loop entrance.'
      if ( i > 10 ) goto 89
      goto 10
 89   i=i+1
      if ( i > 20 ) goto 99
      goto 10
 99   print *,'test end.'
      return 
 100  print *,'NG may be tp miss.'
      return 
      end
      call sub(1)
      stop
      end

