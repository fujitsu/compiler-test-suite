subroutine s1
implicit none
complex:: cmp(2:4)
class(*),allocatable::xx(:),yy(:),zz(:)
integer::k
cmp = (3.45,6.78)

allocate (xx,mold = cmp%re)
allocate (yy,mold= cmp%im)
allocate (zz,mold = cmp)

if (UBOUND(xx,1) .ne. 3) print*,101  ,UBOUND(xx,1)
if (UBOUND(yy,1) .ne. 3) print*,102  ,UBOUND(yy,1)
if (UBOUND(zz,1) .ne. 4) print*,193  ,UBOUND(zz,1)
if (size(xx) .ne. 3) print*,103 ,size(xx)
if (size(yy) .ne. 3) print*,104
if (size(zz) .ne. 3) print*,194
if (sizeof(xx) .ne. 12) print*,105
if (sizeof(yy) .ne. 12) print*,106
if (sizeof(zz) .ne. 12*2) print*,196
k=0
select type(xx)
 type is(real)
  k=1
end select
if (k/=1) print *,183
k=0
select type(yy)
 type is(real)
  k=1
end select
if (k/=1) print *,185
k=0
select type(zz)
 type is(complex)
  k=1
end select
if (k/=1) print *,175
end
call s1
PRINT*,"pass"

End
