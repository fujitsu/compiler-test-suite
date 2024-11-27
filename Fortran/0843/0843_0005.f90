MODULE rat_s
 IMPLICIT NONE
 PRIVATE
 TYPE,PUBLIC :: rat
   PRIVATE
   INTEGER ::ni=0
   INTEGER,public ::d
 END TYPE
 public::rat_plus
 interface
    module integer        FUNCTION rat_plus(a,b) RESULT(r)
      CLASS(rat),INTENT(IN) :: a,b
    END FUNCTION rat_plus
 end interface
type(rat)::x1=rat(d=2),x2=rat(d=3)
 public::x1,x2

END 

submodule(rat_s)smod
contains
  module procedure rat_plus
    r = a%d+b%d
  END procedure
end submodule smod

use rat_s
k= rat_plus(x1,x2)
if (k /=5) print *,201,k

print *,'pass'
end
