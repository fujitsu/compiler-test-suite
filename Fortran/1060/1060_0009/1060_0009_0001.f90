subroutine sub(r, st)
implicit none
type TAG
   integer*8 i, j
end type
real*4 r
type(TAG),value:: st
if (r .ne. 2.0) stop '1-1'
if (st%i .ne. 1 ) stop '1-2'
 return 
entry    ent(st, r)
if (r .ne. 1.0) stop '2-1'
if (st%j .ne. 2 ) stop '2-2'
end subroutine
