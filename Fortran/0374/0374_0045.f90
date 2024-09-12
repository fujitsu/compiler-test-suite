print *,"pass"
end
module mod
integer ,bind(c) :: ia
common /com/ i
bind(c) :: /com/
SAVE :: /com/
end

subroutine subb()
use mod
!$omp parallel
ia=ia
!$omp end parallel
end
