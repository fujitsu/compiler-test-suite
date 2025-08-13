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
write(4,*) 2, lhf,loc(lhf)
end subroutine
end

 use run
 use const
 implicit none
lhf = 2
write(4,*) 3, lhf,loc(lhf)
  call r_setup

print *,'pass'
end
