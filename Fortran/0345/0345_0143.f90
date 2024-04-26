        module mod1
          integer(4),allocatable,dimension(:)::ii
        end module

        module mod0
         contains
         subroutine sub()
           call subsub()
          contains
          subroutine subsub()
           use mod1
           ii(1)=1
          end subroutine
         end subroutine
        end module

        program aa
         use mod1
         use mod0
          allocate(ii(2))
          call sub()
          if (ii(1).ne.1) print *,'error'
          print *,'pass'
        end program
