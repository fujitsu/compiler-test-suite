interface
subroutine sub(iii, ccc)
implicit none
integer iii(:,:)
character(*)  ccc
end subroutine
subroutine ent(ccc, iii)
integer iii(:,:)
character(*)  ccc
end subroutine
end interface

integer iii(2,3)
character*10  ccc

iii = 1
ccc = '2'

  call sub(iii, ccc)
  if (any(iii.ne. 2)) stop '1-1'
  if (ccc.ne. '4') stop '1-2'

  call ent(ccc, iii)
  if (any(iii.ne. 5)) stop '2-1'
  if (ccc.ne. '8') stop '2-2'

  print *,'PASS'

end program
