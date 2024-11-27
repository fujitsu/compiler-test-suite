
         integer :: a=0
           !$omp task  default(none)
           !$omp task
              a=func(1)                  
              if(a/=2) print *,"err"
           !$omp end task
           !$omp end task


          print *,"pass"
          end

          integer function func(a)
            integer a
            func = a+1
          end function 
