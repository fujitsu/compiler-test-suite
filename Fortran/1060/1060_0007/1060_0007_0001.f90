subroutine sub(iii, rrr)
implicit none
integer,optional,pointer:: iii(:,:)
real*8,optional,pointer::  rrr(:,:,:)
if (present(iii)) then
 iii = iii + 1
endif
if (present(rrr)) then
 rrr = rrr + 2.
endif
 return 
entry    ent(rrr, iii)
if (present(iii)) then
 iii = iii + 3
endif
if (present(rrr)) then
 rrr = rrr + 4.
endif
end subroutine
