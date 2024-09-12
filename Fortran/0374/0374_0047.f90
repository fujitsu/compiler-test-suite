print *,"pass"
end
module mod
integer ,bind(c,name="aa") :: ia
common /com/ i
bind(c,name="bb") :: /com/
SAVE :: /com/
end

subroutine subb()
use mod
!$omp parallel
ia=ia
!$omp end parallel
end
