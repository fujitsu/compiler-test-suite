MODULE rat_numbers
 IMPLICIT NONE
 PRIVATE
 TYPE,PUBLIC :: rat
   PRIVATE
   INTEGER ::ni=0
   INTEGER ::d=2
 END TYPE
 interface
    module integer        FUNCTION rat_plus(a,b) RESULT(r)
      CLASS(rat),INTENT(IN) :: a,b
    END FUNCTION rat_plus
 end interface
 public::rat_plus
END 

submodule(rat_numbers)smod
contains
  module procedure rat_plus
    r = a%d*b%d
  END procedure
end submodule smod

use rat_numbers
type(rat):: x1,x2
if (rat_plus(x1,x2) /= 4) print *,101

print *,'pass'
end
