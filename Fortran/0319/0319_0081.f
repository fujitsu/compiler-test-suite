      character*2,dimension(2):: ch,an
      ch(1)='aa'
      ch(2)='bb'
      call sub(ch,an)
      print *,an
      end
      subroutine sub(x,an)
      character*(*) x(2),an(2)
      an = merge(x,x,.true.)
      end
