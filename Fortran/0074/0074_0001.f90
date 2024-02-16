module const
 implicit none
 private
 real(8),public:: lho=3
 real(8),public:: lhs=2
 real(8),public:: lhf
public:: setup
contains
 subroutine setup
 implicit none
lhf = lhs- lho
write(1,*) 1, lhf,loc(lhf)
write(1,*) 1, lhs,loc(lhs)
write(1,*) 1, lho,loc(lho)
end subroutine
end

module run
 implicit none
 public:: r_setup
contains
 subroutine r_setup
 use const,only: lho,lhs,lhf
 implicit none
write(1,*) 2, lhf,loc(lhf)
write(1,*) 2, lhs,loc(lhs)
write(1,*) 2, lho,loc(lho)
end subroutine
end

module mods
 use run
 use const
 implicit none
contains
 subroutine init
 implicit none
 call setup
write(1,*) 3, lhf,loc(lhf)
write(1,*) 3, lhs,loc(lhs)
write(1,*) 3, lho,loc(lho)
  call r_setup
end subroutine
end

use mods
call setup
call r_setup
print *,'pass'
end


 

 
 
