          module m
            interface
              module subroutine sub
              end subroutine
            end interface
            interface
              module subroutine ssub
              end subroutine
            end interface
          end

          submodule(m)smod
          contains
           module subroutine sub
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
call ssub
print *,'pass'
        end
