         implicit none 
         integer :: a=0
                    !$omp task  default(none)
                    !$omp task
                        a=i(1)                  
                        if(a/=2) print *,"err"
                    !$omp end task
                    !$omp end task


          print *,"pass"
          contains 
            integer function i(a)
              integer a
              i = a+1
            end function 
          end
