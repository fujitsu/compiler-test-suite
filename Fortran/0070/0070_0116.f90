module m1
contains
subroutine s1(a,b,c,d,e,f)
integer,allocatable,dimension(:):: a
integer,allocatable             :: b
integer,pointer    ,dimension(:):: c
integer,pointer                 :: d
integer,allocatable,dimension(:,:,:):: e
integer,pointer    ,dimension(:,:,:):: f
integer,allocatable,dimension(:):: xa
integer,allocatable             :: xb
integer,pointer    ,dimension(:):: xc
integer,pointer                 :: xd
integer,allocatable,dimension(:,:,:):: xe
integer,pointer    ,dimension(:,:,:):: xf
namelist /nama/ a,b,c,d,e,f
namelist /nama/ xa,xb,xc,xd,xe,xf
allocate(xa(2),xb,xc(2),xd,xe(2,3,4),xf(2,3,4))
a=(/1,2/)
b=3
c=(/1,2/)
d=3
e=reshape((/(i,i=1,24)/),(/2,3,4/))
f=reshape((/(i,i=1,24)/),(/2,3,4/))
xa=10+(/1,2/)
xb=10+3
xc=10+(/1,2/)
xd=10+3
xe=10+reshape((/(i,i=1,24)/),(/2,3,4/))
xf=10+reshape((/(i,i=1,24)/),(/2,3,4/))
write(1,nama)
a=1+(/1,2/)
b=1+3
c=1+(/1,2/)
d=1+3
e=1+reshape((/(i,i=1,24)/),(/2,3,4/))
f=1+reshape((/(i,i=1,24)/),(/2,3,4/))
xa=11+(/1,2/)
xb=11+3
xc=11+(/1,2/)
xd=11+3
xe=11+reshape((/(i,i=1,24)/),(/2,3,4/))
xf=11+reshape((/(i,i=1,24)/),(/2,3,4/))
write(1,nama)
end subroutine
subroutine chk(a,b,c,d,e,f)
integer,allocatable,dimension(:):: xa
integer,allocatable             :: xb
integer,pointer    ,dimension(:):: xc
integer,pointer                 :: xd
integer,allocatable,dimension(:,:,:):: xe
integer,pointer    ,dimension(:,:,:):: xf
integer,allocatable,dimension(:):: a
integer,allocatable             :: b
integer,pointer    ,dimension(:):: c
integer,pointer                 :: d
integer,allocatable,dimension(:,:,:):: e
integer,pointer    ,dimension(:,:,:):: f
namelist /nama/ a,b,c,d,e,f
namelist /nama/ xa,xb,xc,xd,xe,xf
allocate(xa(2),xb,xc(2),xd,xe(2,3,4),xf(2,3,4))
rewind 1
read(1,nama) 
if (any(a/=(/1,2/)))print *,'error-1'
if (    b/=3       )print *,'error-2',b
if (any(c/=(/1,2/)))print *,'error-3'
if (    d/=3       )print *,'error-4'
if (any(e/=reshape((/(i,i=1,24)/),(/2,3,4/))))print *,'error-11'
if (any(f/=reshape((/(i,i=1,24)/),(/2,3,4/))))print *,'error-12'
if (any(xa/=10+(/1,2/)))print *,'error-1'
if (    xb/=10+3       )print *,'error-2',b
if (any(xc/=10+(/1,2/)))print *,'error-3'
if (    xd/=10+3       )print *,'error-4'
if (any(xe/=10+reshape((/(i,i=1,24)/),(/2,3,4/))))print *,'error-11'
if (any(xf/=10+reshape((/(i,i=1,24)/),(/2,3,4/))))print *,'error-12'
read(1,nama) 
if (any(xa/=11+(/1,2/)))print *,'error-1'
if (    xb/=11+3       )print *,'error-2',b
if (any(xc/=11+(/1,2/)))print *,'error-3'
if (    xd/=11+3       )print *,'error-4'
if (any(xe/=11+reshape((/(i,i=1,24)/),(/2,3,4/))))print *,'error-11'
if (any(xf/=11+reshape((/(i,i=1,24)/),(/2,3,4/))))print *,'error-12'
if (any(a/=(/1,2/)+1))print *,'error-101'
if (    b/=3      +1 )print *,'error-102'
if (any(c/=(/1,2/)+1))print *,'error-103'
if (    d/=3       +1)print *,'error-104'
if (any(e/=1+reshape((/(i,i=1,24)/),(/2,3,4/))))print *,'error-1011'
if (any(f/=1+reshape((/(i,i=1,24)/),(/2,3,4/))))print *,'error-1012'
end subroutine
end
subroutine s1_0
use m1
integer,allocatable,dimension(:):: a
integer,allocatable             :: b
integer,pointer    ,dimension(:):: c
integer,pointer                 :: d
integer,allocatable,dimension(:,:,:):: e
integer,pointer    ,dimension(:,:,:):: f
allocate(a(2),b,c(2),d,e(2,3,4),f(2,3,4))
call       s1(a,b,c,d,e,f)
if (any(a/=1+(/1,2/)))print *,'error-201'
if (    b/=1+3       )print *,'error-202'
if (any(c/=1+(/1,2/)))print *,'error-203'
if (    d/=1+3       )print *,'error-204'
if (any(e/=1+reshape((/(i,i=1,24)/),(/2,3,4/))))print *,'error-2021'
if (any(f/=1+reshape((/(i,i=1,24)/),(/2,3,4/))))print *,'error-2022'
end
subroutine chk_0
use m1
integer,allocatable,dimension(:):: a
integer,allocatable             :: b
integer,pointer    ,dimension(:):: c
integer,pointer                 :: d
integer,allocatable,dimension(:,:,:):: e
integer,pointer    ,dimension(:,:,:):: f
allocate(a(2),b,c(2),d,e(2,3,4),f(2,3,4))
call      chk(a,b,c,d,e,f)
if (any(a/=1+(/1,2/)))print *,'error-301'
if (    b/=1+3       )print *,'error-302'
if (any(c/=1+(/1,2/)))print *,'error-303'
if (    d/=1+3       )print *,'error-304'
if (any(e/=1+reshape((/(i,i=1,24)/),(/2,3,4/))))print *,'error-3031'
if (any(f/=1+reshape((/(i,i=1,24)/),(/2,3,4/))))print *,'error-3032'
end
call s1_0
call chk_0
print *,'pass'
end
