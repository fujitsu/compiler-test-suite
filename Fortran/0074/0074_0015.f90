module m2
private
public::init
 common /x/ lhf
!$omp threadprivate(/x/)
contains
 subroutine init
 implicit none
!$omp parallel
lhf = 2
write(18,*) 3, lhf,loc(lhf)
  call s1
!$omp end parallel
end subroutine
end

 subroutine s1
!$omp threadprivate(/x/)
 common /x/ lhf
if (lhf/=2) print *,101,lhf
end subroutine

use m2
call init
print *,'pass'
end

