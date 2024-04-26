subroutine s1
implicit none
complex:: cmp(2:4)
real,allocatable::xx(:),yy(:)
complex,allocatable::zz(:)
cmp = (3.45,6.78)

allocate (xx,source = cmp%re)
allocate (yy,source = cmp%im)
allocate (zz,source = cmp)

if (UBOUND(xx,1) .ne. 3) print*,101  ,UBOUND(xx,1)
if (UBOUND(yy,1) .ne. 3) print*,102  ,UBOUND(yy,1)
if (UBOUND(zz,1) .ne. 4) print*,193  ,UBOUND(zz,1)
if (size(xx) .ne. 3) print*,103 ,size(xx)
if (size(yy) .ne. 3) print*,104
if (size(zz) .ne. 3) print*,194
if (sizeof(xx) .ne. 12) print*,105
if (sizeof(yy) .ne. 12) print*,106
if (sizeof(zz) .ne. 12*2) print*,196
if (any(xx .ne. 3.45)) print*,107
if (any(yy .ne. 6.78)) print*,108
if (any(abs(zz-(3.45, 6.78))>0.0001)) print*,198
end
call s1
PRINT*,"pass"

End
