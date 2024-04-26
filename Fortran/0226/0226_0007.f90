
         implicit none 
         integer :: a=0
                    !$omp task  default(none) shared(a)
                    !$omp task
                        a=fun1(1)
                        if(a/=2) print *,"err"
                    !$omp end task
                    !$omp end task

                    !$omp task  default(none) shared(a)
                    !$omp task  default(none) shared(a)
                        a=fun1(2)
                        if(a/=3) print *,"err"
                    !$omp end task
                    !$omp end task

                    !$omp task  default(none)
                    !$omp task  default(none)
                    !$omp task  default(none) shared(a)
                        a=fun1(3)
                        if(a/=4) print *,"err"
                    !$omp end task
                    !$omp end task
                    !$omp end task

                    !$omp task      default(none) shared(a)
                        a=fun1(4)
                        if(a/=5) print *,"err"
                    !$omp end task

                    !$omp task  default(none) shared(a)
                    !$omp critical
                        a=fun1(5)
                        if(a/=6) print *,"err"
                    !$omp end critical
                    !$omp end task

          print *,"pass"

          contains

            integer function fun1(a)
              integer a
              fun1 = a+1
            end function

          end
