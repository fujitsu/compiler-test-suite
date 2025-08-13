module m1 
 implicit none
 integer :: lhf
!$omp threadprivate(lhf)
end


 subroutine r_setup
  use m1
 implicit none
if (lhf/=2) print *,101,lhf
end subroutine

module m2
 use m1
 implicit none
 private
 public:: init
contains
 subroutine init
 implicit none
!$omp parallel
lhf = 2
write(17,*) 3, lhf,loc(lhf)
  call r_setup
!$omp end parallel
end subroutine
end

use m2
call init
print *,'pass'
end

