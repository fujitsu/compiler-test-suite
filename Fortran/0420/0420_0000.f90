module const
 implicit none
 real(8):: lhf
end

module mods
 use const
 implicit none
contains
 subroutine init
 implicit none
write(1,*) 3, lhf,loc(lhf)
end subroutine
end

use mods,only: init
call init
print *,'pass'
end
