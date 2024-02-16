module m0
integer,allocatable,dimension(:):: za
integer,allocatable             :: zb
integer,pointer    ,dimension(:):: zc
integer,pointer                 :: zd
integer,allocatable,dimension(:,:,:):: ze
integer,pointer    ,dimension(:,:,:):: zf
integer,allocatable,dimension(:):: wa
integer,allocatable             :: wb
integer,pointer    ,dimension(:):: wc
integer,pointer                 :: wd
integer,allocatable,dimension(:,:,:):: we
integer,pointer    ,dimension(:,:,:):: wf
namelist /namz/ za,zb,zc,zd,ze,zf,wa,wb,wc,wd,we,wf
end
module m1
use m0,da=>za,db=>zb,dc=>zc,dd=>zd,de=>ze,df=>zf,ea=>wa,eb=>wb,ec=>wc,ed=>wd,ee=>we,ef=>wf
contains
subroutine ss_alc
allocate(da(2),db,dc(2),dd,de(2,3,4),df(2,3,4))
allocate(ea(2),eb,ec(2),ed,ee(2,3,4),ef(2,3,4))
end subroutine
subroutine ss_set1
da=100+(/1,2/)
db=100+3
dc=100+(/1,2/)
dd=100+3
de=100+reshape((/(i,i=1,24)/),(/2,3,4/))
df=100+reshape((/(i,i=1,24)/),(/2,3,4/))
ea=200+(/1,2/)
eb=200+3
ec=200+(/1,2/)
ed=200+3
ee=200+reshape((/(i,i=1,24)/),(/2,3,4/))
ef=200+reshape((/(i,i=1,24)/),(/2,3,4/))
end subroutine
subroutine ss_set2
da=101+(/1,2/)
db=101+3
dc=101+(/1,2/)
dd=101+3
de=101+reshape((/(i,i=1,24)/),(/2,3,4/))
df=101+reshape((/(i,i=1,24)/),(/2,3,4/))
ea=201+(/1,2/)
eb=201+3
ec=201+(/1,2/)
ed=201+3
ee=201+reshape((/(i,i=1,24)/),(/2,3,4/))
ef=201+reshape((/(i,i=1,24)/),(/2,3,4/))
end subroutine
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
namelist /nama/ xa,xb,xc,xd,xe,xf,a,b,c,d,e,f
call ss_set1
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
write(2,namz)
call ss_set2
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
write(2,namz)
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
integer,allocatable,dimension(:):: za
integer,allocatable             :: zb
integer,pointer    ,dimension(:):: zc
integer,pointer                 :: zd
integer,allocatable,dimension(:,:,:):: ze
integer,pointer    ,dimension(:,:,:):: zf
integer,allocatable,dimension(:):: wa
integer,allocatable             :: wb
integer,pointer    ,dimension(:):: wc
integer,pointer                 :: wd
integer,allocatable,dimension(:,:,:):: we
integer,pointer    ,dimension(:,:,:):: wf
namelist /nama/ xa,xb,xc,xd,xe,xf,a,b,c,d,e,f
namelist /namz/ za,zb,zc,zd,ze,zf,wa,wb,wc,wd,we,wf
allocate(xa(2),xb,xc(2),xd,xe(2,3,4),xf(2,3,4))
allocate(za(2),zb,zc(2),zd,ze(2,3,4),zf(2,3,4))
allocate(wa(2),wb,wc(2),wd,we(2,3,4),wf(2,3,4))
rewind 1
rewind 2
read(1,nama) 
read(2,namz) 
if (any(a/=(/1,2/)))print *,'error-301'
if (    b/=3       )print *,'error-2',b
if (any(c/=(/1,2/)))print *,'error-3'
if (    d/=3       )print *,'error-4'
if (any(e/=reshape((/(i,i=1,24)/),(/2,3,4/))))print *,'error-11'
if (any(f/=reshape((/(i,i=1,24)/),(/2,3,4/))))print *,'error-12'
if (any(xa/=10+(/1,2/)))print *,'error-401'
if (    xb/=10+3       )print *,'error-2',b
if (any(xc/=10+(/1,2/)))print *,'error-3'
if (    xd/=10+3       )print *,'error-4'
if (any(xe/=10+reshape((/(i,i=1,24)/),(/2,3,4/))))print *,'error-11'
if (any(xf/=10+reshape((/(i,i=1,24)/),(/2,3,4/))))print *,'error-12'
if (any(za/=100+(/1,2/)))print *,'error-501'
if (    zb/=100+3       )print *,'error-2',b
if (any(zc/=100+(/1,2/)))print *,'error-3'
if (    zd/=100+3       )print *,'error-4'
if (any(ze/=100+reshape((/(i,i=1,24)/),(/2,3,4/))))print *,'error-11'
if (any(zf/=100+reshape((/(i,i=1,24)/),(/2,3,4/))))print *,'error-12'
if (any(wa/=200+(/1,2/)))print *,'error-601'
if (    wb/=200+3       )print *,'error-2',b
if (any(wc/=200+(/1,2/)))print *,'error-3'
if (    wd/=200+3       )print *,'error-4'
if (any(we/=200+reshape((/(i,i=1,24)/),(/2,3,4/))))print *,'error-11'
if (any(wf/=200+reshape((/(i,i=1,24)/),(/2,3,4/))))print *,'error-12'
read(1,nama) 
read(2,namz) 
if (any(xa/=11+(/1,2/)))print *,'error-701'
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
if (any(za/=101+(/1,2/)))print *,'error-801'
if (    zb/=101+3       )print *,'error-2',b
if (any(zc/=101+(/1,2/)))print *,'error-3'
if (    zd/=101+3       )print *,'error-4'
if (any(ze/=101+reshape((/(i,i=1,24)/),(/2,3,4/))))print *,'error-11'
if (any(zf/=101+reshape((/(i,i=1,24)/),(/2,3,4/))))print *,'error-12'
if (any(wa/=201+(/1,2/)))print *,'error-901'
if (    wb/=201+3       )print *,'error-2',b
if (any(wc/=201+(/1,2/)))print *,'error-3'
if (    wd/=201+3       )print *,'error-4'
if (any(we/=201+reshape((/(i,i=1,24)/),(/2,3,4/))))print *,'error-11'
if (any(wf/=201+reshape((/(i,i=1,24)/),(/2,3,4/))))print *,'error-12'
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
call ss_alc
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
