module m0
type x
 integer::a1
 integer::a2
end type
type(x),allocatable             :: wa
type(x)                         :: wb
type(x),pointer                 :: wc
type(x),allocatable             :: wd
type(x)                         :: we
type(x),pointer                 :: wf
end
module m1
use m0,ea=>wa,eb=>wb,ec=>wc
namelist /nama/ea,eb,ec,wd,we,wf
contains
subroutine ss_alc
allocate(ea,ec,wd,wf)
end subroutine
subroutine ss_set1
ea%a1=101
eb%a1=102
ec%a1=103
wd%a1=104
we%a1=105
wf%a1=106
ea%a2=111
eb%a2=112
ec%a2=113
wd%a2=114
we%a2=115
wf%a2=116
end subroutine
subroutine ss_1
write(1,nama)
end subroutine
end
subroutine chk
use m0,only:x
type(x),allocatable             :: ea
type(x)                         :: eb
type(x),pointer                 :: ec
type(x),allocatable             :: wd
type(x)                         :: we
type(x),pointer                 :: wf
namelist /nama/ea,eb,ec,wd,we,wf
rewind 1
allocate(ea,ec,wd,wf)
read(1,nama) 
if (ea%a1/=101)print *,'error-1'
if (eb%a1/=102)print *,'error-2'
if (ec%a1/=103)print *,'error-3'
if (wd%a1/=104)print *,'error-4'
if (we%a1/=105)print *,'error-5'
if (wf%a1/=106)print *,'error-6'
if (ea%a2/=111)print *,'error-1'
if (eb%a2/=112)print *,'error-2'
if (ec%a2/=113)print *,'error-3'
if (wd%a2/=114)print *,'error-4'
if (we%a2/=115)print *,'error-5'
if (wf%a2/=116)print *,'error-6'
end
use m1
call ss_alc
call ss_set1
call ss_1
call chk
print *,'pass'
end
