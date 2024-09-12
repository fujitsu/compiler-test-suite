                module mod
                  integer       ,target :: tt
                  procedure(sub),pointer :: pp=>sub
                contains
                  subroutine sub
                    print *,'pass'
                 end subroutine sub
              end

        use mod
        call pp()
        end
