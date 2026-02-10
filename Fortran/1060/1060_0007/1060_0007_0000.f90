interface
subroutine sub(iii, rrr)
implicit none
integer,pointer,optional:: iii(:,:)
real*8,pointer,optional::  rrr(:,:,:)
end subroutine
subroutine ent(rrr, iii)
integer,pointer,optional:: iii(:,:)
real*8,pointer,optional::  rrr(:,:,:)
end subroutine
end interface

integer,target:: tiii(2,3)
real*8 ,target:: trrr(4,5,6)
integer,pointer:: iii(:,:)
real*8,pointer::  rrr(:,:,:)

tiii = 1
trrr = 2
iii => tiii
rrr => trrr

  call sub(iii, rrr)
  if (any(iii.ne. 2)) stop '1-1'
  if (any(rrr.ne. 4)) stop '1-2'

  call ent(rrr, iii)
  if (any(iii.ne. 5)) stop '2-1'
  if (any(rrr.ne. 8)) stop '2-2'

  call sub
  call ent

  print *,'PASS'

end program
