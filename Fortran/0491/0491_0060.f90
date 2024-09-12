MODULE rat_num
 IMPLICIT NONE
 TYPE,PUBLIC :: rat
   INTEGER ::d=15
 END TYPE
 contains
     ELEMENTAL TYPE(rat) FUNCTION s(a) RESULT(r)
      integer,INTENT(IN) :: a
    r%d = a
    END 
end

subroutine s1
use rat_num
integer :: a(2)=[1,2]
class(rat),allocatable :: c(:)
c = s(a)
if (any(ubound(c)/=2)) print *,100
if (   (c(1)%d/=1)) print *,101,c(1)%d
if (   (c(2)%d/=2)) print *,102,c(2)%d
end
call s1
print *,'pass'
end
