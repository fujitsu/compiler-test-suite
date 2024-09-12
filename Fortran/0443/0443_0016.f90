          module m
            interface
              module subroutine sub
              end subroutine
            end interface
            interface
              module subroutine ssub
              end subroutine
            end interface
            integer::n=0
          end

          submodule(m)smod
          contains
           module subroutine sub
           n=n+1
           end subroutine
         end

        submodule(m:smod)ssmod
        contains
          module subroutine ssub
            call sub
         end
        end
use m
call sub
if (n/=1) print *,201
call ssub
if (n/=2) print *,221
print *,'pass'
        end
