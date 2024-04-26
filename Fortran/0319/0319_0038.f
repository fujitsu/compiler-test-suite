      subroutine sub_l(ch20)
      character*20 ch20
      ch20=adjustl(ch20)
      return
      end
      subroutine sub_r(ch20)
      character*20 ch20
      ch20=adjustr(ch20)
      return
      end
      character*20 ch20
      ch20='          0123456789'
      call sub_l(ch20)
      print *,ch20,'+test continue '
      call sub_r(ch20)
      print *,ch20,'+test end '
      stop
      end
