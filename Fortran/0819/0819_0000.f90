         module m
           INTERFACE
              module subroutine sub_1
              END subroutine
              module subroutine sub_2
              END subroutine
              module subroutine sub_3
              END subroutine
           END INTERFACE
        end
        submodule  (m) smod
        contains
             module subroutine sub_3
             print *,'smod.sub_3'
             END subroutine
             subroutine sub_1
             END subroutine
        end
        use m
        call sub_3()
        end
