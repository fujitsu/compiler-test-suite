subroutine sub(iii, rrr)
implicit none
integer iii(:,:)
real*8  rrr(:,:,:)
 iii = iii + 1
 rrr = rrr + 2.
 return 
entry    ent(rrr, iii)
 iii = iii + 3
 rrr = rrr + 4.
end subroutine
