      subroutine sub_m(sw1,sw2)
      integer sw1,sw2
      i=0
      goto (89,99,100) sw1
 1    return
 10   i=i+1
      print *,'Now loop entrance.'
      if ( i > 10 ) goto 89
      goto (89,99,100,10) sw1
      entry sub_e(sw1,sw2)
      i=0
 89   i=i+1
      if ( i > 20 ) goto 99
      goto (10,99,100) sw2
      return
 99   print *,'test end.'
      return 
 100  print *,'NG may be tp miss.'
      return 
      end
      integer sw1,sw2
      sw1=4;sw2=1
      call sub_m(sw1,sw2)
      call sub_e(sw1,sw2)
      stop
      end





