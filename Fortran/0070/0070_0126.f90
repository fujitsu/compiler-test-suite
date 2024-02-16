module m0
type x
 integer::a1
 integer::a2
end type
type(x),allocatable             :: wa(:)
type(x)                         :: wb(1)
type(x),pointer                 :: wc(:)
type(x),allocatable             :: wd(:)
type(x)                         :: we(1)
type(x),pointer                 :: wf(:)
namelist /nama/wa,wb,wc,wd,we,wf
end
module m1
use m0,ea=>wa,eb=>wb,ec=>wc
contains
subroutine ss_alc
allocate(ea(1),ec(1),wd(1),wf(1))
end subroutine
subroutine ss_set1
ea(1)%a1=101
eb(1)%a1=102
ec(1)%a1=103
wd(1)%a1=104
we(1)%a1=105
wf(1)%a1=106
ea(1)%a2=111
eb(1)%a2=112
ec(1)%a2=113
wd(1)%a2=114
we(1)%a2=115
wf(1)%a2=116
end subroutine
subroutine ss_1
write(1,nama)
end subroutine
end
subroutine chk
use m0,only:x
type(x),allocatable             :: wa(:)
type(x)                         :: wb(1)
type(x),pointer                 :: wc(:)
type(x),allocatable             :: wd(:)
type(x)                         :: we(1)
type(x),pointer                 :: wf(:)
namelist /nama/wa,wb,wc,wd,we,wf
rewind 1
allocate(wa(1),wc(1),wd(1),wf(1))
read(1,nama) 
if (wa(1)%a1/=101)print *,'error-1'
if (wb(1)%a1/=102)print *,'error-2'
if (wc(1)%a1/=103)print *,'error-3'
if (wd(1)%a1/=104)print *,'error-4'
if (we(1)%a1/=105)print *,'error-5'
if (wf(1)%a1/=106)print *,'error-6'
if (wa(1)%a2/=111)print *,'error-1'
if (wb(1)%a2/=112)print *,'error-2'
if (wc(1)%a2/=113)print *,'error-3'
if (wd(1)%a2/=114)print *,'error-4'
if (we(1)%a2/=115)print *,'error-5'
if (wf(1)%a2/=116)print *,'error-6'
end
use m1
call ss_alc
call ss_set1
call ss_1
call chk
print *,'pass'
end
