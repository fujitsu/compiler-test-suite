      subroutine sub(i)
      i=i+1
      stop
      end
      i=0
      print *,i
      call sub(i)
      end
