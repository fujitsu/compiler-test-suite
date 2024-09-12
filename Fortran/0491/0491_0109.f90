MODULE rat_num
 IMPLICIT NONE
 TYPE,PUBLIC :: rat
 PRIVATE
INTEGER ::d=15
 END TYPE
 contains
     ELEMENTAL IMPURE TYPE(rat) FUNCTION rat_plus(a,b) RESULT(r)
      CLASS(rat),INTENT(IN) :: a,b
    r%d = a%d*b%d
    END FUNCTION rat_plus
end

subroutine s1
use rat_num
class(rat),allocatable :: a(:),b(:)
real::r(2)
allocate(a(2),b(2))
a = rat_plus(a,b)
end
print *,'pass'
end
