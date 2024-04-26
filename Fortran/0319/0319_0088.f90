      subroutine sub
      i=0
      write(1,'(4htest)',err=10 )
 10   i=i+1
      print *,'Now loop entrance.'
      if ( i > 10 ) goto 89
      goto 10
 89   i=i+1
      if ( i > 20 ) goto 9
      goto 10
 9    i=0
      write(1,'(4htest)',err=20)
 20   i=i+1
      print *,'Now loop entrance.'
      if ( i > 10 ) goto 79
      goto 20
 79   i=i+1
      if ( i > 20 ) goto 99
      goto 20
 99   print *,'test end.'
      return 
 100  print *,'NG may be tp miss.'
      return 
      end
      open(1,iostat=ie1,err=99,status='scratch',action='readwrite', &
             recl=20,access="direct")
      call sub
      close(1)
      stop
 99   print *,'File open error. NG.'
      end


