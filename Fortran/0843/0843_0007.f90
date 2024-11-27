MODULE rat_num
 IMPLICIT NONE
 PRIVATE
 TYPE,PUBLIC :: rat
 PRIVATE
INTEGER ::n=10,d=20
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
 interface
  module subroutine     set(d)
    type(rat),intent(out)::d
  end
  module subroutine     chk(d,n,k)
    type(rat),intent(in)::d
    integer,intent(in)::n(:),k
  end
 end interface

 public::set,chk
end

submodule(rat_num)set
contains
  module procedure    set
    d=rat()
  end
end
submodule(rat_num)chk
contains
  module procedure  chk
    write(1,*) d,n,k
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

call set(a)
call set(b)
a = a+b+2
call chk(a, [850,200],001)
call set(a)
call set(b)
a = 2+a+b
call chk(a, [850,200],002)
call set(a)
call set(b)
r = b%real()
if (r/=0.5) print *,1003,r
call chkchk

print *,'pass'
end
subroutine chkchk
rewind 1
read(1,*) n1,n2,n3,n4,n5
if (any([n1,n2,n3,n4,n5]/=[1200,400,850,200,1]))print *,901,n1,n2,n3,n4,n5
read(1,*) n1,n2,n3,n4,n5
if (any([n1,n2,n3,n4,n5]/=[1200,400,850,200,2]))print *,901,n1,n2,n3,n4,n5
end
