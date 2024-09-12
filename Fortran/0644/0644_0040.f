      module mo
      contains
        recursive subroutine sub1()
        character*4 ch4
        ch4="****"
        call sub2()
        contains
          subroutine sub2()
          end subroutine
        end subroutine
      end module
      use mo
      call sub1()
      end
