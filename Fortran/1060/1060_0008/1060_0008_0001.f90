subroutine sub(r, i)
implicit none
real*4 r
integer*4,value:: i
if (r .ne. 2.0) stop '1-1'
if (i .ne. 1 ) stop '1-2'
 return 
entry    ent(i, r)
if (r .ne. 1.0) stop '2-1'
if (i .ne. 2 ) stop '2-2'
end subroutine
