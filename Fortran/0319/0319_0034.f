      subroutine sub
      common /com/ia
      if( ia .eq. 0 ) then
      pause 'for test end'
      endif
      ia=ia+9
      return 
      end
      common /com/ia
      ia=1
      call sub
      print *,ia
      print *,'test end'
      stop
      end
