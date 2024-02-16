module const
 implicit none
 real(8):: lhf
end

module run
 implicit none
contains
 subroutine r_setup
 use const
 implicit none
write(1,*) 2, lhf,loc(lhf)
end subroutine
end

module mods
 use run
 use const
 implicit none
contains
 subroutine init
 implicit none
lhf = 2
write(1,*) 3, lhf,loc(lhf)
  call r_setup
end subroutine
end

use mods,only: init
call init
print *,'pass'
end


 

 
 
