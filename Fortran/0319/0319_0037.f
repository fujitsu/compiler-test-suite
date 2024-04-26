      subroutine sub(int)
      integer int
      int = huge(int)
      return
      end
      integer int
      call sub(int)
      print *,'test end ',int
      stop
      end
