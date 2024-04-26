               MODULE m1
                 TYPE t1
                    INTEGER:: x11
                    CONTAINS
                      PROCEDURE:: t_prc=>prc
                      GENERIC:: gen => t_prc
                  END TYPE
                  CONTAINS
                  SUBROUTINE   prc(x,y)
                  CLASS(t1),INTENT(INOUT)::x
                  CLASS(t1),INTENT(IN)::y
                   x%x11 = y%x11 +1
                 END SUBROUTINE
                END MODULE
module m2
  type gen
     integer::y1
  end type
end

use m1
use m2
type(gen):: v
print *,'pass'
end

       

