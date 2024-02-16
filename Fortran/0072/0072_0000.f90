module m0
integer,allocatable             :: wa
integer                         :: wb
integer,pointer                 :: wc
integer,allocatable             :: wd
integer                         :: we
integer,pointer                 :: wf
namelist /nama/wa,wb,wc,wd,we,wf
end
module m1
use m0,ea=>wa,eb=>wb,ec=>wc
contains
subroutine ss_alc
allocate(ea,ec,wd,wf)
end subroutine
subroutine ss_set1
ea=101
eb=102
ec=103
wd=104
we=105
wf=106
end subroutine
subroutine ss_1
write(1,nama)
end subroutine
end
subroutine chk
integer,allocatable             :: wa
integer                         :: wb
integer,pointer                 :: wc
integer,allocatable             :: wd
integer                         :: we
integer,pointer                 :: wf
namelist /nama/wa,wb,wc,wd,we,wf
rewind 1
allocate(wa,wc,wd,wf)
read(1,nama) 
if (wa/=101)print *,'error-1'
if (wb/=102)print *,'error-2'
if (wc/=103)print *,'error-3'
if (wd/=104)print *,'error-4'
if (we/=105)print *,'error-5'
if (wf/=106)print *,'error-6'
end
use m1
call ss_alc
call ss_set1
call ss_1
call chk
print *,'pass'
end
