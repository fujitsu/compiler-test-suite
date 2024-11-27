      module mod
      contains
      recursive subroutine sub(i)
        interface aaa
          moduleprocedure sub
        endinterface
      endsubroutine
      end module
      end
