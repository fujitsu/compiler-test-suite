module snfmod_01a
integer :: ooo
 save ooo
!$omp threadprivate(ooo)
end
module snfmod_02a
integer :: ooo
 save ooo
!$omp threadprivate(ooo)
end
module snfmod_03a
use snfmod_01a
end

use snfmod_01a
use snfmod_03a
ooo=1
print *,'pass'
end
