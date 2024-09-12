      module mo
        contains
        recursive subroutine sub()
        integer int
        int = 1
        int = 2
        entry ent()
        int = 3
        call foo(int)
          contains
          subroutine foo(int)
          print *,int
          end subroutine
        end subroutine
      end module
      use mo
      call sub()
      call ent()
      end
