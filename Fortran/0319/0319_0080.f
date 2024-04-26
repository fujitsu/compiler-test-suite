      character*2 ch
      ch='aa'
      call sub(ch)
      end
      subroutine sub(x)
      character*(*) x
      print *,merge(x,x,.true.)
      end
