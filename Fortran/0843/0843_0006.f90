MODULE rat_num
 IMPLICIT NONE
 PRIVATE
 TYPE,PUBLIC :: rat
 PRIVATE
INTEGER ::n=15,d
 CONTAINS
 PROCEDURE :: real => rat_to_real
 PROCEDURE,PRIVATE :: rat_plus_i, rat_plus_rat => rat_plus
 PROCEDURE,PRIVATE,PASS(b) :: i_plus_rat
 GENERIC :: OPERATOR(+) => rat_plus_rat, rat_plus_i, i_plus_rat
 END TYPE
 interface
    module ELEMENTAL REAL FUNCTION rat_to_real(this) RESULT(r)
      CLASS(rat),INTENT(IN) :: this
    END FUNCTION rat_to_real
    ELEMENTAL module TYPE(rat) FUNCTION rat_plus_i(a,b) RESULT(r)
      CLASS(rat),INTENT(IN) :: a
      INTEGER,INTENT(IN) :: b
    END FUNCTION rat_plus_i
    module ELEMENTAL TYPE(rat) FUNCTION i_plus_rat(a,b) RESULT(r)
      INTEGER,INTENT(IN) :: a
      CLASS(rat),INTENT(IN) :: b
    END FUNCTION i_plus_rat
    module ELEMENTAL TYPE(rat) FUNCTION rat_plus(a,b) RESULT(r)
      CLASS(rat),INTENT(IN) :: a,b
    END FUNCTION rat_plus
 end interface
 public::set,chk
contains
  subroutine     set(d,n)
    type(rat),intent(out)::d
    integer,intent(in)::n
    d=rat(d=n)
  end
  subroutine     chk(d,n,k)
    type(rat),intent(in)::d
    integer,intent(in)::n(:),k
    if (any([d%n,d%d]/=n        )) print *,101,d,k
  end
end

submodule(rat_num)smod
contains
  module procedure rat_to_real
    r = REAL(this%n)/this%d
  END procedure
  module procedure rat_plus_i
    r%n = a%n + b*a%d
    r%d = a%d
  END procedure
  module procedure i_plus_rat
    r%n = b%n + a*b%d
    r%d = b%d
  END procedure
  module procedure rat_plus
    r%n = a%n*b%d + b%n*a%d
    r%d = a%d*b%d
  END procedure
end submodule smod

use rat_num
type(rat) :: a,b
real::r

call set(a,10)
call set(b,20)
a = a+b+2
call chk(a, [850,200],001)
call set(a,10)
call set(b,20)
a = 2+a+b
call chk(a, [850,200],002)
call set(a,100)
call set(b,20)
r = b%real()
if (r/=0.75) print *,1003,r

print *,'pass'
end
