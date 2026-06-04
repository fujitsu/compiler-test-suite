               MODULE m1
                 TYPE t1
                    INTEGER:: x11
                    CONTAINS
                      PROCEDURE:: t_prc=>prc
                      GENERIC:: gen => t_prc
                  END TYPE
               interface t1
                  module procedure ::ss
               end interface
                  CONTAINS
                  SUBROUTINE   prc(x,y)
                  CLASS(t1),INTENT(INOUT)::x
                  CLASS(t1),INTENT(IN)::y
                   x%x11 = y%x11 +1
                 END SUBROUTINE
                    subroutine ss
                    end
end
module m2
use m1
private
public::t1
end

use m2
type(t1):: v
print *,'pass'
end

       

