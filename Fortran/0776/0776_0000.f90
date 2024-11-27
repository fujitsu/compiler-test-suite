module m1
integer::n1=1,n2=2
contains
subroutine s1(c1s,c1a,c2s,c2a)
character(*),pointer::c1s,c1a(:)
character(n1),pointer::c2s,c2a(:)
character(1),pointer::c3s,c3a(:)
character(:),pointer::c4s,c4a(:)

kk=0
allocate(  c1s ,mold= '11'(:2),stat=kk)
if (kk==0) print *,111,kk
kk=0
allocate(  c2s ,mold= '11'(:2),stat=kk)
if (kk==0) print *,112,kk
kk=0
allocate(  c3s ,mold= '11'(:2),stat=kk)
if (kk==0) print *,116,kk
kk=0
allocate(  c1a(2) ,mold= '11'(:2),stat=kk)
if (kk==0) print *,113,kk
kk=0
allocate(  c2a(2) ,mold= '11'(:2),stat=kk)
if (kk==0) print *,114,kk
kk=0
allocate(  c3a(2) ,mold= '11'(:2),stat=kk)
if (kk==0) print *,115,kk
kk=0
allocate(  c1s ,mold= '11'(:n2),stat=kk)
if (kk==0) print *,121,kk
kk=0
allocate(  c2s ,mold= '11'(:n2),stat=kk)
if (kk==0) print *,122,kk
kk=0
allocate(  c3s ,mold= '11'(:n2),stat=kk)
if (kk==0) print *,126,kk
kk=0
allocate(  c1a(2) ,mold= '11'(:n2),stat=kk)
if (kk==0) print *,123,kk
kk=0
allocate(  c2a(2) ,mold= '11'(:n2),stat=kk)
if (kk==0) print *,124,kk
kk=0
allocate(  c3a(2) ,mold= '11'(:n2),stat=kk)
if (kk==0) print *,125,kk
kk=0
allocate(  c4a(2) ,mold= '11'(:n2),stat=kk)
if (kk/=0) print *,201,kk
kk=0
allocate(  c4a(2) ,mold= '11'(:2),stat=kk)
if (kk/=0) print *,202,kk
kk=0
allocate(  c4s    ,mold= '11'(:n2),stat=kk)
if (kk/=0) print *,203,kk
kk=0
allocate(  c4s    ,mold= '11'(: 2),stat=kk)
if (kk/=0) print *,204,kk
end subroutine
end
subroutine ss
use m1
character(1),pointer::c1s,c1a(:)
character(1),pointer::c2s,c2a(:)
call s1 (c1s,c1a,c2s,c2a)
end
call ss
print *,'pass'
end
