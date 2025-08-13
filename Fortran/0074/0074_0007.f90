module const
 implicit none
 integer :: lhf
contains
 subroutine r_setup
 implicit none
if (lhf/=2) print *,101,lhf
end subroutine
end

module mods
 use const
 implicit none
contains
 subroutine init
 implicit none
lhf = 2
write(10,*) 3, lhf,loc(lhf)
  call r_setup
end subroutine
end

use mods,only: init
call init
print *,'pass'
end


 

 
 
