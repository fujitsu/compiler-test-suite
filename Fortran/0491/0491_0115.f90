MODULE rat_num
 IMPLICIT NONE
 TYPE,PUBLIC :: rat
 PRIVATE
INTEGER ::d=15
 END TYPE
 contains
     ELEMENTAL IMPURE TYPE(rat) FUNCTION rat_plus(a) RESULT(r)
      integer,INTENT(IN) :: a
    r%d = a
    END FUNCTION rat_plus
end

subroutine s1
use rat_num
integer :: a(2)=[1,2]
class(rat),allocatable :: c(:)
c = rat_plus(a)
end
print *,'pass'
end
