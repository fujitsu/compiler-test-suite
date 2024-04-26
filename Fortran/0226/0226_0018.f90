

         module m
         contains
           subroutine sub()
           end subroutine sub
         end module m
        
        program main
          use m
          !$omp task  default(none)
          !$omp task
          call sub()
          !$omp end task
          !$omp end task
          
          print *,"pass"
        end program main
