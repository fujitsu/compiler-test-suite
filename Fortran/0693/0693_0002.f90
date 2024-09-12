MODULE m
      TYPE, PRIVATE ::t_type
        integer ::x
      END TYPE
      CONTAINS
        SUBROUTINE  foo(monitor)
             INTERFACE
               SUBROUTINE monitor( current_estimate)
                  IMPORT  t_type
                 TYPE( t_type ),INTENT(IN) :: current_estimate (:)
               END SUBROUTINE
             END INTERFACE
         END SUBROUTINE
 END MODULE 
use m
print *,'pass'
end
