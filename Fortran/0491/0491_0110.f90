MODULE rat_num
 IMPLICIT NONE
 TYPE,PUBLIC :: rat
 PRIVATE
INTEGER ::d=15
 END TYPE
 contains
     ELEMENTAL IMPURE TYPE(rat) FUNCTION rat_plus(a) RESULT(r)
      CLASS(rat),INTENT(IN) :: a
    r%d = a%d
    END FUNCTION rat_plus
end

subroutine s1
use rat_num
class(rat),allocatable :: a(:)
type(rat) :: b(2)
allocate(a(2))
b = rat_plus(a)
end
print *,'pass'
end
