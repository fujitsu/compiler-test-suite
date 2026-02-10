interface
subroutine sub(iii, rrr)
implicit none
integer iii(:,:)
real*8  rrr(:,:,:)
end subroutine
subroutine ent(rrr, iii)
integer iii(:,:)
real*8  rrr(:,:,:)
end subroutine
end interface

integer iii(2,3)
real*8  rrr(4,5,6)

iii = 1
rrr = 2

  call sub(iii, rrr)
  if (any(iii.ne. 2)) stop '1-1'
  if (any(rrr.ne. 4)) stop '1-2'

  call ent(rrr, iii)
  if (any(iii.ne. 5)) stop '2-1'
  if (any(rrr.ne. 8)) stop '2-2'

  print *,'PASS'

end program
