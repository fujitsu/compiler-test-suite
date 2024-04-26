      subroutine sub(ava)
      integer ava,va
      volatile va
      va=1
      ava=va
      return
      end
      call sub(i)
      print *,i
      stop
      end
