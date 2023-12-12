       module mod_1
         integer :: var
       !$omp threadprivate (var)  ! 2)
       end
       module mod_2   ! 3)
         use mod_1, ONLY:  var ! 4), 5), 6)
       end
         use mod_2 ! 7)
         use mod_1 ! 8)
       var=1       ! 9)



if (var/=1)print *,101
print *,'pass'
      end

