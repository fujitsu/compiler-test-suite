        module mod1
          integer(4),allocatable,dimension(:)::ii
        end module

        subroutine sub()
          call subsub()
        contains
         subroutine subsub()
          use mod1
           ii(1)=1
         end subroutine
        end subroutine

        program aa
         use mod1
          allocate(ii(2))
          call sub()
          if (ii(1).ne.1) print *,'error'
          print *,'pass'
        end program
