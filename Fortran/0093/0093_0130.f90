implicit none
complex:: cmp(3)
real,allocatable::xx(:),yy(:)
cmp = (3.45,6.78)

allocate (xx,source = cmp%re)
allocate (yy,source = cmp%im)


if (UBOUND(xx,1) .ne. 3) print*,101
if (UBOUND(yy,1) .ne. 3) print*,102
if (size(xx) .ne. 3) print*,103
if (size(yy) .ne. 3) print*,104
if (sizeof(xx) .ne. 12) print*,105
if (sizeof(yy) .ne. 12) print*,106
if (any(xx .ne. 3.45)) print*,107
if (any(yy .ne. 6.78)) print*,108
PRINT*,"PASS"

end

