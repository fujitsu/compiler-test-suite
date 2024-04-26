      module m1
      contains
        subroutine xxx(i)
          print *,'error'
        entry xx(i)
          call yy(i)
          i=i+1
        end subroutine
        subroutine yy(i)
          i=+1
        end subroutine
      end module

      module m2
      contains
        subroutine ss1(i)
         use m1
          call xx(i)
          i=i+1
        end subroutine
      end module

      module m3
       use m2
      contains
        subroutine ss(i)
          call ss1(i)
          i=i+1
        end subroutine
      end module

      module m4
       use m3
      contains
        subroutine xxx(i)
          print *,'error'
        entry xx(i)
          call ss(i)
          i=i+1
        end subroutine
      end module

       use m4
       call xx(i)
       if (i/=5) print *,'error'
       print *,'pass'
      end
