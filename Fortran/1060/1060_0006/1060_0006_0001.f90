subroutine sub(iii, ccc)
implicit none
integer iii(:,:)
character(*)  ccc
 iii = iii + 1
 ccc = char(ichar(ccc) + 2)
 return 
entry    ent(ccc, iii)
 iii = iii + 3
 ccc = char(ichar(ccc) + 4)
end subroutine
