       module mod_1
         integer :: var
       !$omp threadprivate (var)
       end
       module mod_2
         use mod_1, ONLY:  var
       end
         use mod_2
         use mod_1
       var=1



if (var/=1)print *,101
print *,'pass'
      end

