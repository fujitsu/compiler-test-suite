MODULE rat_num
 IMPLICIT NONE
 PRIVATE
 TYPE,PUBLIC :: rat
 PRIVATE
INTEGER ::n=15,d
 CONTAINS
 PROCEDURE,PRIVATE ::  rat_plus_rat => rat_plus
 GENERIC :: OPERATOR(+) => rat_plus_rat
 END TYPE
 type,extends(rat),public::rat2
   integer::z=500
 end type
 interface
    module ELEMENTAL IMPURE TYPE(rat) FUNCTION rat_plus(a,b) RESULT(r)
      CLASS(rat),INTENT(IN) :: a,b
    END FUNCTION rat_plus
 end interface
end

submodule(rat_num)smod
contains
  module procedure rat_plus
    r%n = a%n*b%d + b%n*a%d
    r%d = a%d*b%d
    select type(b)
      type is(rat2)
       r%d=r%d+b%z
      type is(rat)
    end select
  END procedure
end submodule smod

subroutine s1
use rat_num
class(rat),allocatable :: a(:),b(:)
real::r(2)
allocate(rat2::a(2),b(2))
a = a+b
end
print *,'pass'
end
