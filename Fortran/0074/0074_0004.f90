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
  call r_setup
end subroutine
end

use mods,only: init
call init
call chk
print *,'pass'
end
subroutine chk
rewind 1
read(1,*) n1,an2
if (n1/=2) print *,101
if (an2/=2) print *,102
end
