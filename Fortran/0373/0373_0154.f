      program main
      external foo
      call sub(foo)
      end
      subroutine sub(bar)
      external bar
      print*,"sub"
      call bar
      end
      subroutine foo
      print*,"foo"
      end
